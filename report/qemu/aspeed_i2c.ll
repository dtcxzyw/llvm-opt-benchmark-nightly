Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_i2c?download=true
inline.NumInlined: 364
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@aspeed_i2c_bus_read:bb.a
  br i1 %.not5.i.i, label %aspeed_i2c_bus_new_read.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef range(i32 0, 256) %i.ai, i64 noundef %1, i32 noundef %2, i64 noundef range(i64 -1, 4294967296) %.0.i) #14
  br label %aspeed_i2c_bus_new_read.exit

bb.p:                                             ; preds = %bb.a
  switch i64 %1, label %bb.aa [
    i64 0, label %bb.q
    i64 4, label %bb.q
    i64 8, label %bb.q
    i64 12, label %bb.q
    i64 16, label %bb.q
    i64 24, label %bb.q
    i64 28, label %bb.q
    i64 32, label %bb.q
    i64 20, label %bb.r
    i64 36, label %bb.s
    i64 40, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ao = lshr i64 %1, 2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = tail call i32 @i2c_bus_busy(ptr noundef %i.at) #14
  %i.av = shl i32 %i.au, 16
  %i.aw = or i32 %i.av, -65537
  %i.ax = zext i32 %i.aw to i64
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.az = load i8, ptr %i.ay, align 1, !range !8, !noundef !9
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = load i32, ptr @qemu_loglevel, align 4
  %i.bc = and i32 %i.bb, 2048
  %.not22.i = icmp eq i32 %i.bc, 0
  br i1 %.not22.i, label %bb.ac, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_read) #14
  br label %bb.ac

bb.v:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.bh = load i8, ptr %i.bg, align 1, !range !8, !noundef !9
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load i32, ptr @qemu_loglevel, align 4
  %i.bk = and i32 %i.bj, 2048
  %.not.i8 = icmp eq i32 %i.bk, 0
  br i1 %.not.i8, label %bb.ac, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_read) #14
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bm to i64
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  %i.bo = load i32, ptr @qemu_loglevel, align 4
  %i.bp = and i32 %i.bo, 2048
  %.not23.i = icmp eq i32 %i.bp, 0
  br i1 %.not23.i, label %bb.ac, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_read, i64 noundef %1) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.0.i9 = phi i64 [ -1, %bb.ab ], [ -1, %bb.aa ], [ %i.ar, %bb.q ], [ %i.ax, %bb.r ], [ %i.bf, %bb.v ], [ -1, %bb.u ], [ -1, %bb.t ], [ %i.bn, %bb.z ], [ -1, %bb.y ], [ -1, %bb.x ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.br = load i8, ptr %i.bq, align 16
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i10 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i10, label %aspeed_i2c_bus_new_read.exit, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load i16, ptr @_TRACE_ASPEED_I2C_BUS_READ_DSTATE, align 2
  %.not4.i.i11 = icmp eq i16 %i.bu, 0
  br i1 %.not4.i.i11, label %aspeed_i2c_bus_new_read.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load i32, ptr @qemu_loglevel, align 4
  %i.bw = and i32 %i.bv, 32768
  %.not5.i.i12 = icmp eq i32 %i.bw, 0
  br i1 %.not5.i.i12, label %aspeed_i2c_bus_new_read.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef range(i32 0, 256) %i.bs, i64 noundef %1, i32 noundef %2, i64 noundef range(i64 -1, 4294967296) %.0.i9) #14
  br label %aspeed_i2c_bus_new_read.exit

aspeed_i2c_bus_new_read.exit:                     ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.o, %bb.n, %bb.m, %bb.l
  %.0 = phi i64 [ %.0.i, %bb.o ], [ %.0.i, %bb.l ], [ %.0.i, %bb.m ], [ %.0.i, %bb.n ], [ %.0.i9, %bb.ac ], [ %.0.i9, %bb.ad ], [ %.0.i9, %bb.ae ], [ %.0.i9, %bb.af ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_i2c_bus_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1100
  %.val = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val, 4
  %.not = icmp eq i32 %i.d, 0
  %i.e = tail call ptr @object_get_class(ptr noundef nonnull %i.b) #14
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 5 uses
  %i.h = load i8, ptr %i.g, align 16
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i9 = icmp eq i32 %i.j, 0                ; 2 uses
  br i1 %.not, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i9, label %trace_aspeed_i2c_bus_write.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr @_TRACE_ASPEED_I2C_BUS_WRITE_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.k, 0
  br i1 %.not4.i.i, label %trace_aspeed_i2c_bus_write.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not5.i.i = icmp eq i32 %i.m, 0
  br i1 %.not5.i.i, label %trace_aspeed_i2c_bus_write.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, i32 noundef range(i32 0, 256) %i.i, i64 noundef %1, i32 noundef %3, i64 noundef %2) #14
  br label %trace_aspeed_i2c_bus_write.exit.i

trace_aspeed_i2c_bus_write.exit.i:                ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  switch i64 %1, label %bb.bq [
    i64 0, label %bb.f
    i64 4, label %bb.g
    i64 8, label %bb.h
    i64 12, label %bb.i
    i64 16, label %bb.j
    i64 20, label %bb.k
    i64 24, label %bb.t
    i64 48, label %bb.ae
    i64 52, label %bb.af
    i64 28, label %bb.ag
    i64 72, label %bb.aj
    i64 80, label %aspeed_i2c_bus_new_write.exit
    i64 84, label %aspeed_i2c_bus_new_write.exit
    i64 64, label %bb.ak
    i64 60, label %bb.al
    i64 44, label %bb.am
    i64 40, label %bb.ap
    i64 32, label %bb.as
    i64 36, label %bb.at
    i64 76, label %bb.az
    i64 56, label %bb.ba
    i64 96, label %bb.bc
    i64 100, label %bb.bg
    i64 104, label %bb.bk
    i64 108, label %bb.bm
  ]

bb.f:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.n = trunc i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i32 %i.n, ptr %i.o, align 16
  br label %aspeed_i2c_bus_new_write.exit

bb.g:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.p = trunc i64 %2 to i32
  %i.q = and i32 %i.p, 536867071
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 %i.q, ptr %i.r, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.h:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %4 = trunc i64 %2 to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %5 = load i32, ptr %i.s, align 8
  %6 = and i32 %4, 255
  %7 = and i32 %5, -256
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %i.s, align 8
  br label %aspeed_i2c_bus_new_write.exit

bb.i:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1420 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, -16777216
  %i.w = trunc i64 %2 to i32
  %i.x = and i32 %i.w, 16777215
  %i.y = or disjoint i32 %i.v, %i.x
  store i32 %i.y, ptr %i.t, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.j:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.z = trunc i64 %2 to i32
  %i.aa = and i32 %i.z, 520319
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i32 %i.aa, ptr %i.ab, align 16
  br label %aspeed_i2c_bus_new_write.exit

bb.k:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = and i32 %i.ad, 4
  %.not166.i = icmp ne i32 %i.ae, 0
  %i.af = and i64 %2, 4
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = and i1 %i.ag, %.not166.i
  %i.ai = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 1100
  %.val.i.i = load i32, ptr %i.aj, align 4
  %i.ak = and i32 %.val.i.i, 4
  %.not.i176.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i176.i, label %aspeed_i2c_bus_pkt_mode_en.exit.thread.i, label %aspeed_i2c_bus_pkt_mode_en.exit.i

aspeed_i2c_bus_pkt_mode_en.exit.i:                ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 65536
  %.not190.i = icmp eq i32 %i.an, 0
  %i.ao = and i64 %2, 65536
  %.not167.i = icmp eq i64 %i.ao, 0
  %or.cond.i = or i1 %.not167.i, %.not190.i
  br i1 %or.cond.i, label %aspeed_i2c_bus_pkt_mode_en.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.i
  %i.ap = and i32 %i.ad, -268431360               ; 2 uses
  store i32 %i.ap, ptr %i.ac, align 4
  %.not172.i = icmp eq i32 %i.ap, 0
  br i1 %.not172.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.g, align 16
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = xor i32 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 1096 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = and i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr %i.ay(ptr noundef nonnull %0) #14, !inline_history !17
  tail call void @qemu_set_irq(ptr noundef %i.az, i32 noundef 0) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call fastcc void @aspeed_i2c_bus_raise_slave_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

aspeed_i2c_bus_pkt_mode_en.exit.thread.i:         ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.i, %bb.k
  %i.ba = trunc i64 %2 to i32
  %i.bb = and i32 %i.ba, -267915137
  %i.bc = xor i32 %i.bb, -1
  %i.bd = and i32 %i.ad, %i.bc                    ; 3 uses
  store i32 %i.bd, ptr %i.ac, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 16           ; 2 uses
  %.not168.i = icmp eq i32 %i.bf, 0
  br i1 %.not168.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.thread.i
  %i.bg = or i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.ac, align 4
  store i32 0, ptr %i.be, align 16
  br label %bb.q

bb.o:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.thread.i
  %.not169.i = icmp eq i32 %i.bd, 0
  br i1 %.not169.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = load i8, ptr %i.g, align 16
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = xor i32 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1096 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call ptr %i.bp(ptr noundef nonnull %0) #14, !inline_history !17
  tail call void @qemu_set_irq(ptr noundef %i.bq, i32 noundef 0) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread.i
  br i1 %i.ah, label %bb.r, label %aspeed_i2c_bus_new_write.exit

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 24
  %or.cond192.i = icmp eq i32 %i.bt, 0
  br i1 %or.cond192.i, label %aspeed_i2c_bus_new_write.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @aspeed_i2c_handle_rx_cmd(ptr noundef nonnull %0)
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

bb.t:                                             ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.bu = getelementptr i8, ptr %0, i64 1408
  %.val173.i = load i32, ptr %i.bu, align 16      ; 2 uses
  %i.bv = and i32 %.val173.i, 3
  %.not185.i = icmp eq i32 %i.bv, 0
  br i1 %.not185.i, label %aspeed_i2c_bus_new_write.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = trunc i32 %.val173.i to i1
  br i1 %i.bw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 2048
  %.not186.i = icmp eq i32 %i.by, 0
  br i1 %.not186.i, label %aspeed_i2c_bus_new_write.exit, label %bb.w, !prof !10

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.x:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.ca = load i8, ptr %i.bz, align 1, !range !8, !noundef !9
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = and i64 %2, 768
  %or.cond193.i = icmp eq i64 %i.cc, 0
  %or.cond203.i = or i1 %or.cond193.i, %i.cb
  br i1 %or.cond203.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = load i32, ptr @qemu_loglevel, align 4
  %i.ce = and i32 %i.cd, 2048
  %.not187.i = icmp eq i32 %i.ce, 0
  br i1 %.not187.i, label %aspeed_i2c_bus_new_write.exit, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.aa:                                            ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %.not164.i = icmp ult i32 %i.cg, 65536
  br i1 %.not164.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load i32, ptr @qemu_loglevel, align 4
  %i.ci = and i32 %i.ch, 1024
  %.not188.i = icmp eq i32 %i.ci, 0
  br i1 %.not188.i, label %aspeed_i2c_bus_new_write.exit, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %narrow.i = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 0)
  %i.cl = trunc i64 %2 to i32
  %i.cm = and i32 %i.cl, -15729669
  %storemerge.i = or i32 %narrow.i, %i.cm
  store i32 %storemerge.i, ptr %i.cj, align 8
  store i32 0, ptr %i.cf, align 4
  tail call fastcc void @aspeed_i2c_bus_handle_cmd(ptr noundef nonnull %0)
  %i.cn = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.co = or i32 %i.cn, %i.cg
  store i32 %i.co, ptr %i.cf, align 4
  %i.cp = and i32 %i.cn, %i.cg
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 16
  %i.cs = or i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 16
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

bb.ae:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.cu = load i32, ptr %i.ct, align 4
end_hunk_0
begin_hunk_1_@aspeed_i2c_bus_write:bb.a
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gr = load i32, ptr @qemu_loglevel, align 4
  %i.gs = and i32 %i.gr, 2048
  %.not179.i = icmp eq i32 %i.gs, 0
  br i1 %.not179.i, label %aspeed_i2c_bus_new_write.exit, label %bb.bo, !prof !10

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.bp:                                            ; preds = %bb.bm
  %i.gt = trunc i64 %2 to i32
  %i.gu = and i32 %i.gt, 127
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1516
  store i32 %i.gu, ptr %i.gv, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.bq:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i
  %i.gw = load i32, ptr @qemu_loglevel, align 4
  %i.gx = and i32 %i.gw, 2048
  %.not191.i = icmp eq i32 %i.gx, 0
  br i1 %.not191.i, label %aspeed_i2c_bus_new_write.exit, label %bb.br, !prof !10

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_write, i64 noundef %1) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.bs:                                            ; preds = %bb.a
  br i1 %.not.i.i9, label %trace_aspeed_i2c_bus_write.exit.i12, label %bb.bt, !prof !10

bb.bt:                                            ; preds = %bb.bs
  %i.gy = load i16, ptr @_TRACE_ASPEED_I2C_BUS_WRITE_DSTATE, align 2
  %.not4.i.i10 = icmp eq i16 %i.gy, 0
  br i1 %.not4.i.i10, label %trace_aspeed_i2c_bus_write.exit.i12, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gz = load i32, ptr @qemu_loglevel, align 4
  %i.ha = and i32 %i.gz, 32768
  %.not5.i.i11 = icmp eq i32 %i.ha, 0
  br i1 %.not5.i.i11, label %trace_aspeed_i2c_bus_write.exit.i12, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, i32 noundef range(i32 0, 256) %i.i, i64 noundef %1, i32 noundef %3, i64 noundef %2) #14
  br label %trace_aspeed_i2c_bus_write.exit.i12

trace_aspeed_i2c_bus_write.exit.i12:              ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  switch i64 %1, label %bb.de [
    i64 0, label %bb.bw
    i64 4, label %bb.bz
    i64 8, label %bb.ca
    i64 12, label %bb.cb
    i64 16, label %bb.cc
    i64 24, label %bb.ck
    i64 28, label %bb.cl
    i64 32, label %bb.cm
    i64 20, label %bb.cn
    i64 36, label %bb.cv
    i64 40, label %bb.cy
  ]

bb.bw:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.hb = trunc i64 %2 to i32                     ; 2 uses
  %i.hc = and i32 %i.hb, 2
  %.not79.i = icmp eq i32 %i.hc, 0
  br i1 %.not79.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.he = load ptr, ptr %i.hd, align 16
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = trunc i32 %i.hg to i8
  tail call void @i2c_slave_set_address(ptr noundef %i.he, i8 noundef zeroext %i.hh) #14
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hi = and i32 %i.hb, 7455743
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i32 %i.hi, ptr %i.hj, align 16
  br label %aspeed_i2c_bus_new_write.exit

bb.bz:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.hk = trunc i64 %2 to i32
  %i.hl = and i32 %i.hk, 268435215
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 %i.hl, ptr %i.hm, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.ca:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.hn = trunc i64 %2 to i32
  %i.ho = and i32 %i.hn, 7
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store i32 %i.ho, ptr %i.hp, align 8
  br label %aspeed_i2c_bus_new_write.exit

bb.cb:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.hq = trunc i64 %2 to i32
  %i.hr = and i32 %i.hq, 32767
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i32 %i.hr, ptr %i.hs, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.cc:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 16           ; 2 uses
  %i.hv = and i32 %i.hu, 4
  %.not74.i = icmp ne i32 %i.hv, 0
  %i.hw = and i64 %2, 4
  %i.hx = icmp ne i64 %i.hw, 0
  %i.hy = and i1 %i.hx, %.not74.i
  %i.hz = trunc i64 %2 to i32
  %i.ia = and i32 %i.hz, 32767
  %i.ib = xor i32 %i.ia, -1
  %i.ic = and i32 %i.hu, %i.ib                    ; 3 uses
  store i32 %i.ic, ptr %i.ht, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 16           ; 2 uses
  %.not75.i = icmp eq i32 %i.ie, 0
  br i1 %.not75.i, label %bb.cd, label %.thread.i14

.thread.i14:                                      ; preds = %bb.cc
  %i.if = or i32 %i.ie, %i.ic
  store i32 %i.if, ptr %i.ht, align 16
  store i32 0, ptr %i.id, align 16
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %.not76.i = icmp eq i32 %i.ic, 0
  br i1 %.not76.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ig = load i8, ptr %i.g, align 16
  %i.ih = zext nneg i8 %i.ig to i32
  %i.ii = shl nuw i32 1, %i.ih
  %i.ij = xor i32 %i.ii, -1
  %i.ik = load ptr, ptr %i.a, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1096 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8
  %i.in = and i32 %i.im, %i.ij
  store i32 %i.in, ptr %i.il, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = tail call ptr %i.ip(ptr noundef nonnull %0) #14, !inline_history !18
  tail call void @qemu_set_irq(ptr noundef %i.iq, i32 noundef 0) #14
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.thread.i14
  br i1 %i.hy, label %bb.cg, label %aspeed_i2c_bus_new_write.exit

bb.cg:                                            ; preds = %bb.cf
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = and i32 %i.is, 24
  %or.cond.i15 = icmp eq i32 %i.it, 0
  br i1 %or.cond.i15, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @aspeed_i2c_handle_rx_cmd(ptr noundef nonnull %0)
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

bb.ci:                                            ; preds = %bb.cg
  %i.iu = load ptr, ptr %i.a, align 8
  %i.iv = getelementptr i8, ptr %i.iu, i64 1100
  %.val.i.i16 = load i32, ptr %i.iv, align 4
  %i.iw = and i32 %.val.i.i16, 4
  %.not.i83.i = icmp eq i32 %i.iw, 0
  %.0.in.in.in.in.v.i.i = select i1 %.not.i83.i, i64 1428, i64 1416
  %.0.in.in.in.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.in.in.v.i.i
  %.0.in.in.in.i.i = load i32, ptr %.0.in.in.in.in.i.i, align 4
  %i.ix = and i32 %.0.in.in.in.i.i, 7864320
  %i.iy = icmp eq i32 %i.ix, 3145728
  br i1 %i.iy, label %bb.cj, label %aspeed_i2c_bus_new_write.exit

bb.cj:                                            ; preds = %bb.ci
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ja = load ptr, ptr %i.iz, align 16
  tail call void @i2c_ack(ptr noundef %i.ja) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.ck:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.jb = trunc i64 %2 to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store i32 %i.jb, ptr %i.jc, align 8
  br label %aspeed_i2c_bus_new_write.exit

bb.cl:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = and i32 %i.je, -16777216
  %i.jg = trunc i64 %2 to i32
  %i.jh = and i32 %i.jg, 16777215
  %i.ji = or disjoint i32 %i.jf, %i.jh
  store i32 %i.ji, ptr %i.jd, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.cm:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %9 = trunc i64 %2 to i32
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %10 = load i32, ptr %i.jj, align 16
  %11 = and i32 %9, 255
  %12 = and i32 %10, -256
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %i.jj, align 16
  br label %aspeed_i2c_bus_new_write.exit

bb.cn:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.jk = getelementptr i8, ptr %0, i64 1408
  %.val80.i = load i32, ptr %i.jk, align 16       ; 2 uses
  %i.jl = and i32 %.val80.i, 3
  %.not88.i = icmp eq i32 %i.jl, 0
  br i1 %.not88.i, label %aspeed_i2c_bus_new_write.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jm = trunc i32 %.val80.i to i1
  br i1 %i.jm, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jn = load i32, ptr @qemu_loglevel, align 4
  %i.jo = and i32 %i.jn, 2048
  %.not89.i = icmp eq i32 %i.jo, 0
  br i1 %.not89.i, label %aspeed_i2c_bus_new_write.exit, label %bb.cq, !prof !10

bb.cq:                                            ; preds = %bb.cp
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cr:                                            ; preds = %bb.co
  %i.jp = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.jq = load i8, ptr %i.jp, align 1, !range !8, !noundef !9
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = and i64 %2, 768
  %or.cond93.i = icmp eq i64 %i.js, 0
  %or.cond94.i = or i1 %or.cond93.i, %i.jr
  br i1 %or.cond94.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jt = load i32, ptr @qemu_loglevel, align 4
  %i.ju = and i32 %i.jt, 2048
  %.not90.i = icmp eq i32 %i.ju, 0
  br i1 %.not90.i, label %aspeed_i2c_bus_new_write.exit, label %bb.ct, !prof !10

bb.ct:                                            ; preds = %bb.cs
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cu:                                            ; preds = %bb.cr
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = and i32 %i.jw, -65536
  %i.jy = trunc i64 %2 to i32
  %i.jz = and i32 %i.jy, 65535
  %i.ka = or disjoint i32 %i.jx, %i.jz
  store i32 %i.ka, ptr %i.jv, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 4 uses
  %i.kc = load i32, ptr %i.kb, align 16           ; 2 uses
  store i32 0, ptr %i.kb, align 16
  tail call fastcc void @aspeed_i2c_bus_handle_cmd(ptr noundef nonnull %0)
  %i.kd = load i32, ptr %i.kb, align 16           ; 2 uses
  %i.ke = or i32 %i.kd, %i.kc
  store i32 %i.ke, ptr %i.kb, align 16
  %i.kf = and i32 %i.kd, %i.kc
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 16
  %i.ki = or i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.kg, align 16
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

bb.cv:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.kk = load i8, ptr %i.kj, align 1, !range !8, !noundef !9
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %aspeed_i2c_bus_new_write.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.km = load i32, ptr @qemu_loglevel, align 4
  %i.kn = and i32 %i.km, 2048
  %.not87.i = icmp eq i32 %i.kn, 0
  br i1 %.not87.i, label %aspeed_i2c_bus_new_write.exit, label %bb.cx, !prof !10

bb.cx:                                            ; preds = %bb.cw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cy:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.kp = load i8, ptr %i.ko, align 1, !range !8, !noundef !9
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kr = load i32, ptr @qemu_loglevel, align 4
  %i.ks = and i32 %i.kr, 2048
  %.not85.i = icmp eq i32 %i.ks, 0
  br i1 %.not85.i, label %aspeed_i2c_bus_new_write.exit, label %bb.da, !prof !10

bb.da:                                            ; preds = %bb.cz
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.db:                                            ; preds = %bb.cy
  %i.kt = trunc i64 %2 to i32
  %i.ku = and i32 %i.kt, 4095                     ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 %i.ku, ptr %i.kv, align 8
  %.not.i13 = icmp eq i32 %i.ku, 0
  br i1 %.not.i13, label %bb.dc, label %aspeed_i2c_bus_new_write.exit

bb.dc:                                            ; preds = %bb.db
  %i.kw = load i32, ptr @qemu_loglevel, align 4
  %i.kx = and i32 %i.kw, 1024
  %.not86.i = icmp eq i32 %i.kx, 0
  br i1 %.not86.i, label %aspeed_i2c_bus_new_write.exit, label %bb.dd, !prof !10

bb.dd:                                            ; preds = %bb.dc
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.de:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ky = load i32, ptr @qemu_loglevel, align 4
  %i.kz = and i32 %i.ky, 2048
  %.not92.i = icmp eq i32 %i.kz, 0
  br i1 %.not92.i, label %aspeed_i2c_bus_new_write.exit, label %bb.df, !prof !10

bb.df:                                            ; preds = %bb.de
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write, i64 noundef %1) #14
  br label %aspeed_i2c_bus_new_write.exit

aspeed_i2c_bus_new_write.exit:                    ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.as, %bb.ar, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %.critedge.thread.thread.i, %.critedge.thread.i, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %trace_aspeed_i2c_bus_write.exit.i, %trace_aspeed_i2c_bus_write.exit.i
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @i2c_bus_busy(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @aspeed_i2c_bus_raise_slave_interrupt(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #14
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.h = load i8, ptr %i.g, align 16
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1096 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, %i.j
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr %i.p(ptr noundef nonnull %0) #14
  tail call void @qemu_set_irq(ptr noundef %i.q, i32 noundef 1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aspeed_i2c_handle_rx_cmd(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 808        ; 5 uses
  %.val29 = load ptr, ptr %i.b, align 8           ; 3 uses
  %i.c = getelementptr i8, ptr %.val29, i64 1100
  %.val29.val = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val29.val, 4
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %..i = select i1 %.not.i, i64 5, i64 6
  %..i31 = select i1 %.not.i, i64 4, i64 5
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, -7864321
  %i.h = or disjoint i32 %i.g, 7340032
  store i32 %i.h, ptr %i.e, align 8
  br label %aspeed_i2c_set_state.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, -7864321
  %i.l = or disjoint i32 %i.k, 7340032
  store i32 %i.l, ptr %i.i, align 4
  br label %aspeed_i2c_set_state.exit

aspeed_i2c_set_state.exit:                        ; preds = %bb.b, %bb.c
  %i.m = tail call ptr @object_get_class(ptr noundef nonnull %.val29) #14
end_hunk_1
