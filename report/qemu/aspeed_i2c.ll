Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_i2c?download=true
inline.NumInlined: 364
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@aspeed_i2c_bus_write:bb.a

bb.ck:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.jg = trunc i64 %2 to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store i32 %i.jg, ptr %i.jh, align 8
  br label %aspeed_i2c_bus_new_write.exit

bb.cl:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = and i32 %i.jj, -16777216
  %i.jl = trunc i64 %2 to i32
  %i.jm = and i32 %i.jl, 16777215
  %i.jn = or disjoint i32 %i.jk, %i.jm
  store i32 %i.jn, ptr %i.ji, align 4
  br label %aspeed_i2c_bus_new_write.exit

bb.cm:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.jo = trunc i64 %2 to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 16
  %i.jr = and i32 %i.jo, 255
  %i.js = and i32 %i.jq, -256
  %i.jt = or disjoint i32 %i.js, %i.jr
  store i32 %i.jt, ptr %i.jp, align 16
  br label %aspeed_i2c_bus_new_write.exit

bb.cn:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ju = getelementptr i8, ptr %0, i64 1408
  %.val80.i = load i32, ptr %i.ju, align 16       ; 2 uses
  %i.jv = and i32 %.val80.i, 3
  %.not88.i = icmp eq i32 %i.jv, 0
  br i1 %.not88.i, label %aspeed_i2c_bus_new_write.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jw = trunc i32 %.val80.i to i1
  br i1 %i.jw, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jx = load i32, ptr @qemu_loglevel, align 4
  %i.jy = and i32 %i.jx, 2048
  %.not89.i = icmp eq i32 %i.jy, 0
  br i1 %.not89.i, label %aspeed_i2c_bus_new_write.exit, label %bb.cq, !prof !10

bb.cq:                                            ; preds = %bb.cp
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cr:                                            ; preds = %bb.co
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.ka = load i8, ptr %i.jz, align 1, !range !8, !noundef !9
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = and i64 %2, 768
  %or.cond93.i = icmp eq i64 %i.kc, 0
  %or.cond94.i = or i1 %or.cond93.i, %i.kb
  br i1 %or.cond94.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kd = load i32, ptr @qemu_loglevel, align 4
  %i.ke = and i32 %i.kd, 2048
  %.not90.i = icmp eq i32 %i.ke, 0
  br i1 %.not90.i, label %aspeed_i2c_bus_new_write.exit, label %bb.ct, !prof !10

bb.ct:                                            ; preds = %bb.cs
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cu:                                            ; preds = %bb.cr
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, -65536
  %i.ki = trunc i64 %2 to i32
  %i.kj = and i32 %i.ki, 65535
  %i.kk = or disjoint i32 %i.kh, %i.kj
  store i32 %i.kk, ptr %i.kf, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 4 uses
  %i.km = load i32, ptr %i.kl, align 16           ; 2 uses
  store i32 0, ptr %i.kl, align 16
  tail call fastcc void @aspeed_i2c_bus_handle_cmd(ptr noundef nonnull %0)
  %i.kn = load i32, ptr %i.kl, align 16           ; 2 uses
  %i.ko = or i32 %i.kn, %i.km
  store i32 %i.ko, ptr %i.kl, align 16
  %i.kp = and i32 %i.kn, %i.km
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 16
  %i.ks = or i32 %i.kr, %i.kp
  store i32 %i.ks, ptr %i.kq, align 16
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %0)
  br label %aspeed_i2c_bus_new_write.exit

bb.cv:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.ku = load i8, ptr %i.kt, align 1, !range !8, !noundef !9
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %aspeed_i2c_bus_new_write.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kw = load i32, ptr @qemu_loglevel, align 4
  %i.kx = and i32 %i.kw, 2048
  %.not87.i = icmp eq i32 %i.kx, 0
  br i1 %.not87.i, label %aspeed_i2c_bus_new_write.exit, label %bb.cx, !prof !10

bb.cx:                                            ; preds = %bb.cw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.cy:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.kz = load i8, ptr %i.ky, align 1, !range !8, !noundef !9
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lb = load i32, ptr @qemu_loglevel, align 4
  %i.lc = and i32 %i.lb, 2048
  %.not85.i = icmp eq i32 %i.lc, 0
  br i1 %.not85.i, label %aspeed_i2c_bus_new_write.exit, label %bb.da, !prof !10

bb.da:                                            ; preds = %bb.cz
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.db:                                            ; preds = %bb.cy
  %i.ld = trunc i64 %2 to i32
  %i.le = and i32 %i.ld, 4095                     ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 %i.le, ptr %i.lf, align 8
  %.not.i13 = icmp eq i32 %i.le, 0
  br i1 %.not.i13, label %bb.dc, label %aspeed_i2c_bus_new_write.exit

bb.dc:                                            ; preds = %bb.db
  %i.lg = load i32, ptr @qemu_loglevel, align 4
  %i.lh = and i32 %i.lg, 1024
  %.not86.i = icmp eq i32 %i.lh, 0
  br i1 %.not86.i, label %aspeed_i2c_bus_new_write.exit, label %bb.dd, !prof !10

bb.dd:                                            ; preds = %bb.dc
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.aspeed_i2c_bus_old_write) #14
  br label %aspeed_i2c_bus_new_write.exit

bb.de:                                            ; preds = %trace_aspeed_i2c_bus_write.exit.i12
  %i.li = load i32, ptr @qemu_loglevel, align 4
  %i.lj = and i32 %i.li, 2048
  %.not92.i = icmp eq i32 %i.lj, 0
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
  %i.n = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !annotation !11
  %.val112.i = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.o = getelementptr i8, ptr %.val112.i, i64 1100
  %.val112.val.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val112.val.i, 4                ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 4 uses
  %..i.i = select i1 %.not.i.i, i64 5, i64 6
  %..i115.i = xor i32 %i.p, 7
  %..i117.i = select i1 %.not.i.i, i64 8, i64 2
  %..i119.i = select i1 %.not.i.i, i64 10, i64 21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 6 uses
  %i.r = zext nneg i32 %..i115.i to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 31
  %i.w = add nuw nsw i32 %i.v, 1                  ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %..i.i ; 5 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 128
  %.not.i33 = icmp eq i32 %i.z, 0
  br i1 %.not.i33, label %bb.j, label %bb.d

bb.d:                                             ; preds = %aspeed_i2c_set_state.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull %0) #14, !inline_history !19
  %i.ad = load i32, ptr %i.s, align 4
  %i.ae = shl i32 %i.ad, 4
  %i.af = and i32 %i.ae, 16
  %spec.select.idx.i = zext nneg i32 %i.af to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.idx.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %trace_aspeed_i2c_bus_recv.exit.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %trace_aspeed_i2c_bus_recv.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 16
  %i.ai = tail call zeroext i8 @i2c_recv(ptr noundef %i.ah) #14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %indvars.iv.i
  store i8 %i.ai, ptr %i.aj, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i120.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i120.i, label %trace_aspeed_i2c_bus_recv.exit.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.al = load i16, ptr @_TRACE_ASPEED_I2C_BUS_RECV_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.al, 0
  br i1 %.not3.i.i, label %trace_aspeed_i2c_bus_recv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not4.i.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i.i, label %trace_aspeed_i2c_bus_recv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext i8 %i.ai to i32
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.i to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %i.ap, i32 noundef %i.w, i32 noundef %i.ao) #14
  br label %trace_aspeed_i2c_bus_recv.exit.i

trace_aspeed_i2c_bus_recv.exit.i:                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !20

bb.i:                                             ; preds = %trace_aspeed_i2c_bus_recv.exit.i
  %i.aq = load i32, ptr %i.s, align 4
  %i.ar = and i32 %i.aq, -1056964609
  %i.as = shl nuw nsw i32 %i.w, 24
  %i.at = or disjoint i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.s, align 4
  %i.au = load i32, ptr %i.x, align 4
  %i.av = and i32 %i.au, -129
  store i32 %i.av, ptr %i.x, align 4
  br label %aspeed_i2c_bus_recv.exit

bb.j:                                             ; preds = %aspeed_i2c_set_state.exit
  %i.aw = and i32 %i.y, 512
  %.not105.i = icmp eq i32 %i.aw, 0
  br i1 %.not105.i, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, -536805377
  store i32 %i.az, ptr %i.ax, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = tail call ptr @object_get_class(ptr noundef nonnull %.val112.i) #14
  %i.bb = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ba, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 249
  %i.bd = load i8, ptr %i.bc, align 1, !range !8, !noundef !9
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.17, i32 noundef 258, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_i2c_set_rx_dma_dram_offset) #15
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 1100
  %.val.i.i = load i32, ptr %i.bg, align 4
  %i.bh = and i32 %.val.i.i, 4
  %.not.i121.i = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 7 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 268
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = and i64 %i.bj, -4294967296              ; 2 uses
  br i1 %.not.i121.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, %i.bl
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = or disjoint i64 %i.bm, %i.bq
  store i64 %i.br, ptr %i.bi, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  %i.bt = load i8, ptr %i.bs, align 8, !range !8, !noundef !9
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.q, label %aspeed_i2c_set_rx_dma_dram_offset.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 32
  %i.ca = or disjoint i64 %i.bz, %i.bq
  br label %.sink.split.i.i

bb.r:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, %i.bl
  %i.ce = zext i32 %i.cd to i64
  %i.cf = or disjoint i64 %i.bm, %i.ce
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i64 [ %i.ca, %bb.q ], [ %i.cf, %bb.r ]
  store i64 %.sink.i.i, ptr %i.bi, align 8
  br label %aspeed_i2c_set_rx_dma_dram_offset.exit.i

aspeed_i2c_set_rx_dma_dram_offset.exit.i:         ; preds = %.sink.split.i.i, %bb.p
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %..i119.i ; 5 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %.not106134.i = icmp eq i32 %i.ch, 0
  br i1 %.not106134.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %aspeed_i2c_set_rx_dma_dram_offset.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.cj = getelementptr inbounds nuw i8, ptr %.val29, i64 29816
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.cl = load ptr, ptr %i.ci, align 16
  %i.cm = call zeroext i8 @i2c_recv(ptr noundef %i.cl) #14 ; 2 uses
  store i8 %i.cm, ptr %i.a, align 1
  %i.cn = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.co = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i122.i = icmp eq i32 %i.co, 0
  br i1 %.not.i122.i, label %trace_aspeed_i2c_bus_recv.exit125.i, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.cp = load i16, ptr @_TRACE_ASPEED_I2C_BUS_RECV_DSTATE, align 2
  %.not3.i123.i = icmp eq i16 %i.cp, 0
  br i1 %.not3.i123.i, label %trace_aspeed_i2c_bus_recv.exit125.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load i32, ptr @qemu_loglevel, align 4
  %i.cr = and i32 %i.cq, 32768
  %.not4.i124.i = icmp eq i32 %i.cr, 0
  br i1 %.not4.i124.i, label %trace_aspeed_i2c_bus_recv.exit125.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = zext i8 %i.cm to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %i.cn, i32 noundef %i.cn, i32 noundef %i.cs) #14
  br label %trace_aspeed_i2c_bus_recv.exit125.i

trace_aspeed_i2c_bus_recv.exit125.i:              ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ct = load i64, ptr %i.bi, align 8
  %i.cu = call i32 @address_space_write(ptr noundef nonnull %i.cj, i64 noundef %i.ct, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 1) #14
  %.not107.i = icmp eq i32 %i.cu, 0
  br i1 %.not107.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %trace_aspeed_i2c_bus_recv.exit125.i
  %i.cv = load i32, ptr @qemu_loglevel, align 4
  %i.cw = and i32 %i.cv, 2048
  %.not131.i = icmp eq i32 %i.cw, 0
  br i1 %.not131.i, label %aspeed_i2c_bus_recv.exit, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.bi, align 8
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aspeed_i2c_bus_recv, i64 noundef %i.cx) #14
  br label %aspeed_i2c_bus_recv.exit

bb.y:                                             ; preds = %trace_aspeed_i2c_bus_recv.exit125.i
  %i.cy = load i64, ptr %i.bi, align 8
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.bi, align 8
  %i.da = load i32, ptr %i.cg, align 4
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.cg, align 4
  %i.dc = load ptr, ptr %i.b, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 1100
  %.val.i34.a = load i32, ptr %i.dd, align 4
  %i.de = and i32 %.val.i34.a, 4
  %.not132.i = icmp eq i32 %i.de, 0
  br i1 %.not132.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dg = add i32 %i.df, 65536
  %i.dh = and i32 %i.dg, 536805376
  %i.di = and i32 %i.df, -536805377
  %i.dj = or disjoint i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.ck, align 8
  %.pre.i = load i32, ptr %i.cg, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dk = phi i32 [ %i.db, %bb.y ], [ %.pre.i, %bb.z ]
  %.not106.i = icmp eq i32 %i.dk, 0
  br i1 %.not106.i, label %._crit_edge.i, label %bb.s, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.aa, %aspeed_i2c_set_rx_dma_dram_offset.exit.i
  %i.dl = load i32, ptr %i.x, align 4
  %i.dm = and i32 %i.dl, -513
  store i32 %i.dm, ptr %i.x, align 4
  br label %aspeed_i2c_bus_recv.exit

bb.ab:                                            ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.do = load ptr, ptr %i.dn, align 16
  %i.dp = tail call zeroext i8 @i2c_recv(ptr noundef %i.do) #14
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %..i117.i ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 4 uses
  %i.ds = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i126.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i126.i, label %trace_aspeed_i2c_bus_recv.exit129.i, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.dt = load i16, ptr @_TRACE_ASPEED_I2C_BUS_RECV_DSTATE, align 2
  %.not3.i127.i = icmp eq i16 %i.dt, 0
  br i1 %.not3.i127.i, label %trace_aspeed_i2c_bus_recv.exit129.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load i32, ptr @qemu_loglevel, align 4
  %i.dv = and i32 %i.du, 32768
  %.not4.i128.i = icmp eq i32 %i.dv, 0
  br i1 %.not4.i128.i, label %trace_aspeed_i2c_bus_recv.exit129.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = and i32 %i.dr, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 1, i32 noundef %i.dw) #14
  %.pre136.i = load i32, ptr %i.dq, align 4
  br label %trace_aspeed_i2c_bus_recv.exit129.i

trace_aspeed_i2c_bus_recv.exit129.i:              ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.dx = phi i32 [ %i.dr, %bb.ab ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.ad ], [ %.pre136.i, %bb.ae ]
  %i.dy = zext i8 %i.dp to i32
  %i.dz = and i32 %i.dx, -65281
  %i.ea = shl nuw nsw i32 %i.dy, 8
  %i.eb = or disjoint i32 %i.dz, %i.ea
  store i32 %i.eb, ptr %i.dq, align 4
  br label %aspeed_i2c_bus_recv.exit

aspeed_i2c_bus_recv.exit:                         ; preds = %bb.i, %bb.w, %bb.x, %._crit_edge.i, %trace_aspeed_i2c_bus_recv.exit129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %..i31 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = or i32 %i.ed, 4
  store i32 %i.ee, ptr %i.ec, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %..i ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = and i32 %i.eg, 16
  %.not = icmp eq i32 %i.eh, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %aspeed_i2c_bus_recv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ej = load ptr, ptr %i.ei, align 16
  call void @i2c_nack(ptr noundef %i.ej) #14
  %.pre = load i32, ptr %i.ef, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %aspeed_i2c_bus_recv.exit
  %i.ek = phi i32 [ %.pre, %bb.af ], [ %i.eg, %aspeed_i2c_bus_recv.exit ]
  %i.el = and i32 %i.ek, -25
  store i32 %i.el, ptr %i.ef, align 4
  %i.em = load ptr, ptr %i.b, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 1100
  %.val.i35 = load i32, ptr %i.en, align 4
  %i.eo = and i32 %.val.i35, 4
  %.not.i36 = icmp eq i32 %i.eo, 0
  br i1 %.not.i36, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = and i32 %i.eq, -7864321
  %i.es = or disjoint i32 %i.er, 4194304
  store i32 %i.es, ptr %i.ep, align 8
  br label %aspeed_i2c_set_state.exit37

bb.ai:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = and i32 %i.eu, -7864321
  %i.ew = or disjoint i32 %i.ev, 4194304
  store i32 %i.ew, ptr %i.et, align 4
  br label %aspeed_i2c_set_state.exit37

aspeed_i2c_set_state.exit37:                      ; preds = %bb.ah, %bb.ai
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #14
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  %.val40 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.e = getelementptr i8, ptr %.val40, i64 1100
  %.val40.val = load i32, ptr %i.e, align 4
  %i.f = and i32 %.val40.val, 4                   ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0                   ; 3 uses
  %..i = select i1 %.not.i, i32 4, i32 5          ; 2 uses
  %..i43 = select i1 %.not.i, i64 3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %..i43
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 128
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr @_TRACE_ASPEED_I2C_BUS_RAISE_INTERRUPT_DSTATE, align 2
  %.not31 = icmp eq i16 %i.l, 0
  br i1 %.not31, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i, label %aspeed_i2c_bus_pkt_mode_en.exit.thread, label %aspeed_i2c_bus_pkt_mode_en.exit

aspeed_i2c_bus_pkt_mode_en.exit:                  ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 65536
  %.not51.a = icmp eq i32 %i.o, 0
  br i1 %.not51.a, label %aspeed_i2c_bus_pkt_mode_en.exit.thread, label %bb.d

bb.d:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 65536
  %.not32 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not32, ptr @.str.43, ptr @.str.42
  br label %aspeed_i2c_bus_pkt_mode_en.exit.thread

aspeed_i2c_bus_pkt_mode_en.exit.thread:           ; preds = %bb.c, %bb.d, %aspeed_i2c_bus_pkt_mode_en.exit
  %i.t = phi ptr [ @.str.43, %aspeed_i2c_bus_pkt_mode_en.exit ], [ %i.s, %bb.d ], [ @.str.43, %bb.c ]
  %i.u = zext nneg i32 %..i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %i.x = and i32 %i.w, 2
  %.not33 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not33, ptr @.str.43, ptr @.str.44
  %i.z = and i32 %i.w, 1
  %.not34 = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not34, ptr @.str.43, ptr @.str.45
  %i.ab = and i32 %i.w, 4
  %.not35 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not35, ptr @.str.43, ptr @.str.46
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.ae = load i32, ptr %i.ad, align 16
  %i.af = and i32 %i.ae, 128
  %.not36 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not36, ptr @.str.43, ptr @.str.47
  %i.ah = and i32 %i.w, 16
  %.not37 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not37, ptr @.str.43, ptr @.str.48
  %i.aj = and i32 %i.w, 32
  %.not38 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not38, ptr @.str.43, ptr @.str.49
  %i.al = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.t, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak) #14 ; 2 uses
  %i.am = load i32, ptr %i.v, align 4
  tail call fastcc void @trace_aspeed_i2c_bus_raise_interrupt(i32 noundef %i.am, ptr noundef %i.al)
  tail call void @g_free(ptr noundef %i.al) #14
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 1100
  %.val.i45.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre54 = and i32 %.val.i45.pre, 4
  br label %bb.e

bb.e:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.thread, %bb.b, %bb.a
  %.pre-phi = phi i32 [ %.pre54, %aspeed_i2c_bus_pkt_mode_en.exit.thread ], [ %i.f, %bb.b ], [ %i.f, %bb.a ]
  %i.an = phi ptr [ %.pre, %aspeed_i2c_bus_pkt_mode_en.exit.thread ], [ %.val40, %bb.b ], [ %.val40, %bb.a ]
  %i.ao = zext nneg i32 %..i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, %i.j                     ; 2 uses
  %.not39 = icmp eq i32 %i.ar, 0
  %.not.i46 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i46, label %aspeed_i2c_bus_pkt_mode_en.exit48.thread, label %aspeed_i2c_bus_pkt_mode_en.exit48

aspeed_i2c_bus_pkt_mode_en.exit48:                ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 65536
  %.not52 = icmp eq i32 %i.au, 0
  br i1 %.not52, label %aspeed_i2c_bus_pkt_mode_en.exit48.thread, label %bb.f

aspeed_i2c_bus_pkt_mode_en.exit48.thread:         ; preds = %bb.e, %aspeed_i2c_bus_pkt_mode_en.exit48
  store i32 %i.ar, ptr %i.ap, align 4
  br label %bb.f

bb.f:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit48.thread, %aspeed_i2c_bus_pkt_mode_en.exit48
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.aw = load i8, ptr %i.av, align 16
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 1096 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = or i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr %i.bd(ptr noundef nonnull %0) #14
  tail call void @qemu_set_irq(ptr noundef %i.be, i32 noundef 1) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aspeed_i2c_bus_handle_cmd(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 808        ; 17 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 1100    ; 2 uses
  %.val.val = load i32, ptr %i.d, align 4
  %i.e = and i32 %.val.val, 4
  %.not.i = icmp eq i32 %i.e, 0                   ; 3 uses
  %..i = select i1 %.not.i, i32 4, i32 5          ; 6 uses
  %..i180 = select i1 %.not.i, i64 5, i64 6
  %..i182 = select i1 %.not.i, i64 10, i64 21
  %i.f = tail call ptr @object_get_class(ptr noundef %.val) #14
  %i.g = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.i = load i8, ptr %i.h, align 8, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %.val.i = load ptr, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %.val.i, i64 1100
  %.val.val.i = load i32, ptr %i.l, align 4
  %i.m = and i32 %.val.val.i, 4
  %.not.i.i = icmp eq i32 %i.m, 0
  %..i.i = select i1 %.not.i.i, i64 5, i64 6
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %..i.i
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 960
  %i.q = icmp ne i32 %i.p, 0
  %i.r = load i32, ptr %i.d, align 4
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  %or.cond.i = and i1 %i.q, %i.t
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 2048
  %.not17.i = icmp eq i32 %i.v, 0
  br i1 %.not17.i, label %aspeed_i2c_check_sram.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.aspeed_i2c_check_sram) #14
  br label %aspeed_i2c_check_sram.exit

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.w = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.x = load i16, ptr @_TRACE_ASPEED_I2C_BUS_CMD_DSTATE, align 2
  %.not163 = icmp eq i16 %i.x, 0
  br i1 %.not163, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @aspeed_i2c_bus_cmd_dump(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 14 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %..i180 ; 11 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 1
  %.not164 = icmp eq i32 %i.ab, 0
  br i1 %.not164, label %aspeed_i2c_set_state.exit207, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 1100
  %.val.i183 = load i32, ptr %i.ad, align 4
  %i.ae = and i32 %.val.i183, 4
  %.not.i184 = icmp eq i32 %i.ae, 0               ; 2 uses
  %.0.in.in.in.in.v.i = select i1 %.not.i184, i64 1428, i64 1416
  %.0.in.in.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.in.in.v.i
  %.0.in.in.in.i = load i32, ptr %.0.in.in.in.in.i, align 4
  %i.af = and i32 %.0.in.in.in.i, 4194304
  %.not165 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not165, i32 4718592, i32 5242880 ; 2 uses
  br i1 %.not.i184, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, -7864321
  %i.ak = or disjoint i32 %i.aj, %i.ag
  store i32 %i.ak, ptr %i.ah, align 8
  br label %aspeed_i2c_set_state.exit

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, -7864321
  %i.ao = or disjoint i32 %i.an, %i.ag
  store i32 %i.ao, ptr %i.al, align 4
  br label %aspeed_i2c_set_state.exit

aspeed_i2c_set_state.exit:                        ; preds = %bb.j, %bb.k
  %i.ap = tail call ptr @object_get_class(ptr noundef nonnull %i.ac) #14
  %i.aq = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ap, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  %.val.i188 = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.ar = getelementptr i8, ptr %.val.i188, i64 1100
  %.val.val.i189 = load i32, ptr %i.ar, align 4
  %i.as = and i32 %.val.val.i189, 4
  %.not.i.i190 = icmp eq i32 %i.as, 0             ; 3 uses
  %..i.i191 = select i1 %.not.i.i190, i64 8, i64 2
  %..i21.i = select i1 %.not.i.i190, i64 5, i64 6
  br i1 %.not.i.i190, label %aspeed_i2c_bus_pkt_mode_en.exit.thread.i, label %aspeed_i2c_bus_pkt_mode_en.exit.i

aspeed_i2c_bus_pkt_mode_en.exit.i:                ; preds = %aspeed_i2c_set_state.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %i.av = and i32 %i.au, 65536
  %.not26.i = icmp eq i32 %i.av, 0
  br i1 %.not26.i, label %aspeed_i2c_bus_pkt_mode_en.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.i
  %i.aw = lshr i32 %i.au, 23
  %i.ax = and i32 %i.aw, 254
  %i.ay = lshr i32 %i.au, 3
  %i.az = and i32 %i.ay, 1
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = trunc nuw i32 %i.ba to i8
  br label %aspeed_i2c_get_addr.exit

aspeed_i2c_bus_pkt_mode_en.exit.thread.i:         ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.i, %aspeed_i2c_set_state.exit
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %..i21.i
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = and i32 %i.bd, 64
  %.not.i193 = icmp eq i32 %i.be, 0
  br i1 %.not.i193, label %bb.n, label %bb.m

bb.m:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.thread.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call ptr %i.bg(ptr noundef nonnull %0) #14, !inline_history !22
  %i.bi = load i8, ptr %i.bh, align 1
  br label %aspeed_i2c_get_addr.exit

bb.n:                                             ; preds = %aspeed_i2c_bus_pkt_mode_en.exit.thread.i
  %i.bj = and i32 %i.bd, 256
  %.not18.i = icmp eq i32 %i.bj, 0
  br i1 %.not18.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 0, ptr %i.b, align 1, !annotation !11
  %i.bk = tail call ptr @object_get_class(ptr noundef nonnull %.val.i188) #14
  %i.bl = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.bk, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 249
  %i.bn = load i8, ptr %i.bm, align 1, !range !8, !noundef !9
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.17, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_i2c_set_tx_dma_dram_offset) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 1100
  %.val.i23.i = load i32, ptr %i.bq, align 4
  %i.br = and i32 %.val.i23.i, 4
  %.not.i24.i = icmp eq i32 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 268
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i64 %i.bt, -4294967296              ; 2 uses
  br i1 %.not.i24.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.by = load i32, ptr %i.bx, align 16
  %i.bz = and i32 %i.by, %i.bv
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = or disjoint i64 %i.bw, %i.ca
  store i64 %i.cb, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 264
  %i.cd = load i8, ptr %i.cc, align 8, !range !8, !noundef !9
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.s, label %aspeed_i2c_set_tx_dma_dram_offset.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = and i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ca
  br label %.sink.split.i.i

bb.t:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, %i.bv
  %i.co = zext i32 %i.cn to i64
  %i.cp = or disjoint i64 %i.bw, %i.co
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.t, %bb.s
  %.sink.i.i = phi i64 [ %i.ck, %bb.s ], [ %i.cp, %bb.t ]
  store i64 %.sink.i.i, ptr %i.bs, align 8
  br label %aspeed_i2c_set_tx_dma_dram_offset.exit.i

aspeed_i2c_set_tx_dma_dram_offset.exit.i:         ; preds = %.sink.split.i.i, %bb.r
  %i.cq = call fastcc i32 @aspeed_i2c_dma_read(ptr noundef nonnull %0, ptr noundef %i.b) ; 0 uses
  %i.cr = load i8, ptr %i.b, align 1
end_hunk_0
begin_hunk_1_@aspeed_i2c_bus_handle_cmd:bb.a
  %i.kk = and i32 %i.kj, 4
  %.not174 = icmp eq i32 %i.kk, 0
  br i1 %.not174, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @aspeed_i2c_handle_rx_cmd(ptr noundef nonnull %0)
  %.pre255.a = load i32, ptr %i.z, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %aspeed_i2c_set_state.exit221, %bb.bp, %bb.bo
  %i.kl = phi i32 [ %i.kf, %aspeed_i2c_set_state.exit221 ], [ %.pre255.a, %bb.bp ], [ %i.kf, %bb.bo ]
  %i.km = and i32 %i.kl, 32
  %.not175 = icmp eq i32 %i.km, 0
  %.pre259 = load ptr, ptr %i.c, align 8          ; 3 uses
  br i1 %.not175, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kn = getelementptr i8, ptr %.pre259, i64 1100
  %.val.i222 = load i32, ptr %i.kn, align 4
  %i.ko = and i32 %.val.i222, 4
  %.not.i223 = icmp eq i32 %i.ko, 0               ; 2 uses
  %.0.in.in.in.in.v.i224 = select i1 %.not.i223, i64 1428, i64 1416
  %.0.in.in.in.in.i225 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.in.in.v.i224
  %.0.in.in.in.i226 = load i32, ptr %.0.in.in.in.in.i225, align 4
  %i.kp = and i32 %.0.in.in.in.i226, 4194304
  %.not176 = icmp eq i32 %i.kp, 0
  br i1 %.not176, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.kq = load i32, ptr @qemu_loglevel, align 4
  %i.kr = and i32 %i.kq, 2048
  %.not252.a = icmp eq i32 %i.kr, 0
  br i1 %.not252.a, label %bb.bu, label %bb.bt, !prof !10

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.aspeed_i2c_bus_handle_cmd) #14
  %.pre256.a = load ptr, ptr %i.c, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ks = phi ptr [ %.pre256.a, %bb.bt ], [ %.pre259, %bb.bs ] ; 4 uses
  %i.kt = zext nneg i32 %..i to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kt ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = or i32 %i.kv, 32
  store i32 %i.kw, ptr %i.ku, align 4
  %i.kx = getelementptr i8, ptr %i.ks, i64 1100
  %.val.i229 = load i32, ptr %i.kx, align 4
  %i.ky = and i32 %.val.i229, 4
  %.not.i230 = icmp eq i32 %i.ky, 0
  br i1 %.not.i230, label %aspeed_i2c_bus_pkt_mode_en.exit232.thread, label %aspeed_i2c_bus_pkt_mode_en.exit232

aspeed_i2c_bus_pkt_mode_en.exit232:               ; preds = %bb.bu
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.la = load i32, ptr %i.kz, align 8
  %i.lb = and i32 %i.la, 65536
  %.not253.a = icmp eq i32 %i.lb, 0
  br i1 %.not253.a, label %aspeed_i2c_bus_pkt_mode_en.exit232.thread, label %bb.bv

bb.bv:                                            ; preds = %aspeed_i2c_bus_pkt_mode_en.exit232
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4
  %i.le = or i32 %i.ld, 131072
  store i32 %i.le, ptr %i.lc, align 4
  br label %aspeed_i2c_bus_pkt_mode_en.exit232.thread

bb.bw:                                            ; preds = %bb.br
  br i1 %.not.i223, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8
  %i.lh = and i32 %i.lg, -7864321
  %i.li = or disjoint i32 %i.lh, 5767168
  store i32 %i.li, ptr %i.lf, align 8
  br label %aspeed_i2c_set_state.exit235

bb.by:                                            ; preds = %bb.bw
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = and i32 %i.lk, -7864321
  %i.lm = or disjoint i32 %i.ll, 5767168
  store i32 %i.lm, ptr %i.lj, align 4
  br label %aspeed_i2c_set_state.exit235

aspeed_i2c_set_state.exit235:                     ; preds = %bb.bx, %bb.by
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.lo = load ptr, ptr %i.ln, align 16
  call void @i2c_end_transfer(ptr noundef %i.lo) #14
  %i.lp = zext nneg i32 %..i to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = or i32 %i.lr, 16
  store i32 %i.ls, ptr %i.lq, align 4
  %.pre257.a = load ptr, ptr %i.c, align 8
  br label %aspeed_i2c_bus_pkt_mode_en.exit232.thread

aspeed_i2c_bus_pkt_mode_en.exit232.thread:        ; preds = %bb.bu, %aspeed_i2c_bus_pkt_mode_en.exit232, %bb.bv, %aspeed_i2c_set_state.exit235
  %i.lt = phi ptr [ %i.ks, %bb.bu ], [ %i.ks, %aspeed_i2c_bus_pkt_mode_en.exit232 ], [ %i.ks, %bb.bv ], [ %.pre257.a, %aspeed_i2c_set_state.exit235 ]
  %i.lu = load i32, ptr %i.z, align 4
  %i.lv = and i32 %i.lu, -33
  store i32 %i.lv, ptr %i.z, align 4
  %i.lw = getelementptr i8, ptr %i.lt, i64 1100
  %.val.i236 = load i32, ptr %i.lw, align 4
  %i.lx = and i32 %.val.i236, 4
  %.not.i237 = icmp eq i32 %i.lx, 0
  br i1 %.not.i237, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %aspeed_i2c_bus_pkt_mode_en.exit232.thread
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8
  %i.ma = and i32 %i.lz, -7864321
  store i32 %i.ma, ptr %i.ly, align 8
  br label %aspeed_i2c_set_state.exit238

bb.ca:                                            ; preds = %aspeed_i2c_bus_pkt_mode_en.exit232.thread
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4
  %i.md = and i32 %i.mc, -7864321
  store i32 %i.md, ptr %i.mb, align 4
  br label %aspeed_i2c_set_state.exit238

aspeed_i2c_set_state.exit238:                     ; preds = %bb.bz, %bb.ca
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.mf = load ptr, ptr %i.me, align 16
  call void @i2c_schedule_pending_master(ptr noundef %i.mf) #14
  %.pre258 = load ptr, ptr %i.c, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %aspeed_i2c_set_state.exit238, %bb.bq
  %i.mg = phi ptr [ %.pre258, %aspeed_i2c_set_state.exit238 ], [ %.pre259, %bb.bq ]
  %i.mh = getelementptr i8, ptr %i.mg, i64 1100
  %.val.i239 = load i32, ptr %i.mh, align 4
  %i.mi = and i32 %.val.i239, 4
  %.not.i240 = icmp eq i32 %i.mi, 0
  br i1 %.not.i240, label %aspeed_i2c_check_sram.exit, label %aspeed_i2c_bus_pkt_mode_en.exit242

aspeed_i2c_bus_pkt_mode_en.exit242:               ; preds = %bb.cb
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = and i32 %i.mk, 65536
  %.not254 = icmp eq i32 %i.ml, 0
  br i1 %.not254, label %aspeed_i2c_check_sram.exit, label %bb.cc

bb.cc:                                            ; preds = %aspeed_i2c_bus_pkt_mode_en.exit242
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4
  %i.mo = or i32 %i.mn, 65536
  store i32 %i.mo, ptr %i.mm, align 4
  br label %aspeed_i2c_check_sram.exit

aspeed_i2c_check_sram.exit:                       ; preds = %bb.cb, %bb.ab, %bb.ac, %aspeed_i2c_bus_pkt_mode_en.exit204, %bb.d, %bb.c, %aspeed_i2c_bus_pkt_mode_en.exit242, %bb.cc
  ret void
}

declare void @i2c_slave_set_address(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @i2c_nack(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @i2c_recv(ptr noundef) local_unnamed_addr #1

declare i32 @address_space_write(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_aspeed_i2c_bus_raise_interrupt(i32 noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_ASPEED_I2C_BUS_RAISE_INTERRUPT_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, i32 noundef %0, ptr noundef %1) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aspeed_i2c_bus_cmd_dump(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 808
  %.val45 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val45, i64 1100
  %.val45.val = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val45.val, 4                   ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0                   ; 3 uses
  %..i = select i1 %.not.i, i64 5, i64 6
  %..i50 = select i1 %.not.i, i64 4, i64 5
  %..i52 = select i1 %.not.i, i64 10, i64 21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %..i ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = and i32 %i.f, 128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i48 = xor i32 %i.c, 7
  %i.h = zext nneg i32 %..i48 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = lshr i32 %i.j, 8
  %i.l = and i32 %i.k, 31
  %i.m = add nuw nsw i32 %i.l, 1
  %.pre = and i32 %i.f, 512
  %i.n = icmp eq i32 %.pre, 0
  %i.o = select i1 %i.n, ptr @.str.43, ptr @.str.65
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %i.f, 512
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %..i52
  %i.r = load i32, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.pre-phi = phi ptr [ @.str.43, %bb.c ], [ @.str.65, %bb.d ], [ %i.o, %bb.b ]
  %i.s = phi ptr [ @.str.43, %bb.c ], [ @.str.43, %bb.d ], [ @.str.67, %bb.b ]
  %.0 = phi i32 [ 1, %bb.c ], [ %i.r, %bb.d ], [ %i.m, %bb.b ]
  %i.t = and i32 %i.f, 1
  %.not35 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not35, ptr @.str.43, ptr @.str.64
  %i.v = and i32 %i.f, 256
  %.not37 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not37, ptr @.str.43, ptr @.str.66
  %i.x = and i32 %i.f, 64
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not39, ptr @.str.43, ptr @.str.68
  %i.z = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = and <4 x i32> %i.aa, <i32 32, i32 16, i32 8, i32 2>
  %i.ac = icmp eq <4 x i32> %i.ab, zeroinitializer ; 4 uses
  %i.ad = extractelement <4 x i1> %i.ac, i64 3
  %i.ae = select i1 %i.ad, ptr @.str.43, ptr @.str.69
  %i.af = extractelement <4 x i1> %i.ac, i64 2
  %i.ag = select i1 %i.af, ptr @.str.43, ptr @.str.70
  %i.ah = extractelement <4 x i1> %i.ac, i64 1
  %i.ai = select i1 %i.ah, ptr @.str.43, ptr @.str.71
  %i.aj = extractelement <4 x i1> %i.ac, i64 0
  %i.ak = select i1 %i.aj, ptr @.str.43, ptr @.str.48
  %i.al = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.63, ptr noundef nonnull %i.u, ptr noundef nonnull %.pre-phi, ptr noundef nonnull %i.w, ptr noundef nonnull %i.s, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak) #14 ; 2 uses
  %i.am = load i32, ptr %i.e, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %..i50
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i53 = icmp eq i32 %i.ap, 0
  br i1 %.not.i53, label %trace_aspeed_i2c_bus_cmd.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.aq = load i16, ptr @_TRACE_ASPEED_I2C_BUS_CMD_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.aq, 0
  br i1 %.not3.i, label %trace_aspeed_i2c_bus_cmd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 32768
  %.not4.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i, label %trace_aspeed_i2c_bus_cmd.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.72, i32 noundef %i.am, ptr noundef %i.al, i32 noundef %.0, i32 noundef %i.ao) #14
  br label %trace_aspeed_i2c_bus_cmd.exit

trace_aspeed_i2c_bus_cmd.exit:                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  tail call void @g_free(ptr noundef %i.al) #14
  ret void
}

declare i32 @i2c_start_transfer(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @i2c_end_transfer(ptr noundef) local_unnamed_addr #1

declare void @i2c_schedule_pending_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @aspeed_i2c_dma_read(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1100
  %.val.val = load i32, ptr %i.e, align 4
  %i.f = and i32 %.val.val, 4
  %.not.i = icmp eq i32 %i.f, 0
  %..i = select i1 %.not.i, i64 10, i64 21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.i = tail call ptr @get_ptr_rcu_reader() #14  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.b, label %rcu_read_auto_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.n = and i64 %i.m, 4294967295
  store atomic i64 %i.n, ptr %i.i monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  fence seq_cst
  br label %rcu_read_auto_lock.exit

rcu_read_auto_lock.exit:                          ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 29848
  %i.p = load atomic ptr, ptr %i.o monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !25
  store i64 1, ptr %i.a, align 8
  %i.q = call ptr @flatview_translate(ptr noundef %i.p, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 4294967296) #14 ; 6 uses
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.c, label %memory_access_is_direct.exit.thread21

bb.c:                                             ; preds = %rcu_read_auto_lock.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 45
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %memory_region_is_romd.exit.i.i, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.i.i:                   ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i8, ptr %i.w, align 8, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %memory_access_is_direct.exit.thread, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.thread.i.i:            ; preds = %memory_region_is_romd.exit.i.i, %bb.c
  %i.z = getelementptr i8, ptr %i.q, i64 41
  %.val.i.i = load i8, ptr %i.z, align 1, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %.val.i.i to i1
  br i1 %i.aa, label %memory_access_is_direct.exit, label %memory_access_is_direct.exit.thread21

memory_access_is_direct.exit:                     ; preds = %memory_region_is_romd.exit.thread.i.i
  %i.ab = call zeroext i1 @memory_region_is_ram_device(ptr noundef nonnull %i.q) #14
  br i1 %i.ab, label %memory_access_is_direct.exit.memory_access_is_direct.exit.thread21_crit_edge, label %memory_access_is_direct.exit.thread

memory_access_is_direct.exit.memory_access_is_direct.exit.thread21_crit_edge: ; preds = %memory_access_is_direct.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %memory_access_is_direct.exit.thread21

memory_access_is_direct.exit.thread:              ; preds = %memory_region_is_romd.exit.i.i, %memory_access_is_direct.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i64, ptr %i.b, align 8
  %i.af = call ptr @qemu_map_ram_ptr(ptr noundef %i.ad, i64 noundef %i.ae) #14
  %i.ag = load i8, ptr %i.af, align 1
  store i8 %i.ag, ptr %1, align 1
  br label %address_space_read.exit

memory_access_is_direct.exit.thread21:            ; preds = %memory_access_is_direct.exit.memory_access_is_direct.exit.thread21_crit_edge, %memory_region_is_romd.exit.thread.i.i, %rcu_read_auto_lock.exit
  %i.ah = phi i64 [ %.pre, %memory_access_is_direct.exit.memory_access_is_direct.exit.thread21_crit_edge ], [ 1, %memory_region_is_romd.exit.thread.i.i ], [ %i.r, %rcu_read_auto_lock.exit ]
  %i.ai = load i64, ptr %i.b, align 8
  %i.aj = call i32 @flatview_read_continue(ptr noundef %i.p, i64 noundef %i.h, i64 4294967296, ptr noundef nonnull %1, i64 noundef 1, i64 noundef %i.ai, i64 noundef %i.ah, ptr noundef %i.q) #14
  %i.ak = icmp eq i32 %i.aj, 0
  br label %address_space_read.exit

address_space_read.exit:                          ; preds = %memory_access_is_direct.exit.thread21, %memory_access_is_direct.exit.thread
  %.0.i = phi i1 [ true, %memory_access_is_direct.exit.thread ], [ %i.ak, %memory_access_is_direct.exit.thread21 ]
  %i.al = call ptr @get_ptr_rcu_reader() #14      ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %address_space_read.exit
  call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #15
  unreachable

bb.e:                                             ; preds = %address_space_read.exit
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4
  %.not8.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not8.i.i.i.i, label %bb.f, label %glib_autoptr_cleanup_RCUReadAuto.exit

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.al release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !26
  fence seq_cst
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aq = load atomic i8, ptr %i.ap monotonic, align 8, !range !8, !noundef !9
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %glib_autoptr_cleanup_RCUReadAuto.exit, !prof !27

bb.g:                                             ; preds = %bb.f
  store atomic i8 0, ptr %i.ap monotonic, align 8
  call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #14
  br label %glib_autoptr_cleanup_RCUReadAuto.exit

glib_autoptr_cleanup_RCUReadAuto.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.0.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %glib_autoptr_cleanup_RCUReadAuto.exit
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 2048
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.k, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %i.g, align 8
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.aspeed_i2c_dma_read, i64 noundef %i.au) #14
  br label %bb.k

bb.j:                                             ; preds = %glib_autoptr_cleanup_RCUReadAuto.exit
  %i.av = load i64, ptr %i.g, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.g, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %..i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ]
  ret i32 %.0
}

declare ptr @flatview_translate(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #1

declare ptr @qemu_map_ram_ptr(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @flatview_read_continue(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #1

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_is_ram_device(ptr noundef) local_unnamed_addr #1

declare i32 @i2c_send(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @i2c_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal i64 @aspeed_i2c_bus_pool_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #5 {
bb.a:
  %.not = icmp eq i32 %2, 0
end_hunk_1
begin_hunk_2_@aspeed_i2c_bus_pool_read:bb.a
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = or i64 %i.ab, %i.t
  %i.ad = or disjoint i32 %.011, 3                ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl i32 %i.ad, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = or i64 %i.ak, %i.ac                     ; 3 uses
  %i.am = add nuw i32 %.011, 4                    ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !28

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.011.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.011.epil = phi i32 [ %.011.epil.init, %.epil.preheader ], [ %i.av, %bb.c ] ; 3 uses
  %.0910.epil = phi i64 [ %.0910.epil.init, %.epil.preheader ], [ %i.au, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.an = sext i32 %.011.epil to i64
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl i32 %.011.epil, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = or i64 %i.at, %.0910.epil               ; 2 uses
  %i.av = add nuw i32 %.011.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %bb.c ]
  ret i64 %.09.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define internal void @aspeed_i2c_bus_pool_write(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #6 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 7 uses
  %i.c = add i32 %3, 2147483647
  %or.cond = icmp ult i32 %i.c, -2147483641
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %3, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i32 %3, 8
  %n.vec = and i32 %3, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.e = shl <16 x i32> %vec.ind, splat (i32 3)
  %i.f = zext nneg <16 x i32> %i.e to <16 x i64>
  %i.g = lshr <16 x i64> %broadcast.splat, %i.f
  %i.h = trunc <16 x i64> %i.g to <16 x i8>
  %i.i = sext i32 %index to i64
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  store <16 x i8> %i.h, ptr %i.j, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 16)
  %i.k = icmp eq i32 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i32 %i.d, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec10 = and i32 %3, -8                       ; 3 uses
  %broadcast.splatinsert11 = insertelement <8 x i64> poison, i64 %2, i64 0
  %broadcast.splat12 = shufflevector <8 x i64> %broadcast.splatinsert11, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> poison, i32 %vec.epilog.resume.val, i64 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat14, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.l = shl <8 x i32> %vec.ind16, splat (i32 3)
  %i.m = zext nneg <8 x i32> %i.l to <8 x i64>
  %i.n = lshr <8 x i64> %broadcast.splat12, %i.m
  %i.o = trunc <8 x i64> %i.n to <8 x i8>
  %i.p = sext i32 %index15 to i64
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p
  store <8 x i8> %i.o, ptr %i.q, align 1
  %index.next17 = add nuw i32 %index15, 8         ; 2 uses
  %vec.ind.next18 = add nuw <8 x i32> %vec.ind16, splat (i32 8)
  %i.r = icmp eq i32 %index.next17, %n.vec10
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i32 %3, %n.vec10
  br i1 %cmp.n19, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.prol = phi i32 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.08.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.s = shl i32 %.08.prol, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 %2, %i.t
  %i.v = trunc i64 %i.u to i8
  %i.w = sext i32 %.08.prol to i64
  %i.x = getelementptr i8, ptr %i.b, i64 %i.w
  store i8 %i.v, ptr %i.x, align 1
  %i.y = add nuw i32 %.08.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !32

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.unr = phi i32 [ %.08.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i32 %.08.ph, %3
  %i.aa = icmp ugt i32 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08 = phi i32 [ %i.bc, %vec.epilog.scalar.ph ], [ %.08.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = shl i32 %.08, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %2, %i.ac
  %i.ae = trunc i64 %i.ad to i8
  %i.af = sext i32 %.08 to i64
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1
  %i.ah = add nuw i32 %.08, 1                     ; 2 uses
  %i.ai = shl i32 %i.ah, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %2, %i.aj
  %i.al = trunc i64 %i.ak to i8
  %i.am = sext i32 %i.ah to i64
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1
  %i.ao = add nuw i32 %.08, 2                     ; 2 uses
  %i.ap = shl i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %2, %i.aq
  %i.as = trunc i64 %i.ar to i8
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr i8, ptr %i.b, i64 %i.at
  store i8 %i.as, ptr %i.au, align 1
  %i.av = add nuw i32 %.08, 3                     ; 2 uses
  %i.aw = shl i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %2, %i.ax
  %i.az = trunc i64 %i.ay to i8
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr i8, ptr %i.b, i64 %i.ba
  store i8 %i.az, ptr %i.bb, align 1
  %i.bc = add nuw i32 %.08, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @aspeed_i2c_bus_slave_event(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #14
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef 238, ptr noundef nonnull @__func__.ASPEED_I2C_BUS) #14 ; 20 uses
  %i.f = getelementptr i8, ptr %i.e, i64 808      ; 3 uses
  %.val42 = load ptr, ptr %i.f, align 8           ; 2 uses
  %i.g = getelementptr i8, ptr %.val42, i64 1100  ; 3 uses
  %.val42.val = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val42.val, 4
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  %..i48 = select i1 %.not.i, i64 6, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1408
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %..i48
  %i.k = load i32, ptr %i.j, align 4
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @object_get_class(ptr noundef nonnull %.val42) #14
  %i.m = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  switch i32 %1, label %bb.i [
    i32 2, label %bb.c
    i32 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1448
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 512
  %.not.i49.a = icmp eq i32 %i.p, 0
  br i1 %.not.i49.a, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 2048
  %.not40.i = icmp eq i32 %i.r, 0
  br i1 %.not40.i, label %aspeed_i2c_bus_new_slave_event.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_slave_event) #14
  br label %aspeed_i2c_bus_new_slave_event.exit

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1484 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -536805377
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1640 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1468
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, %i.y
  %i.ac = zext i32 %i.ab to i64
  %i.ad = and i64 %i.w, -4294967296
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 1452
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 1492
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1376
  %i.am = load ptr, ptr %i.al, align 16
  tail call void @i2c_ack(ptr noundef %i.am) #14
  br label %aspeed_i2c_bus_new_slave_event.exit

bb.g:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 1444 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, 65684
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = tail call ptr @object_get_class(ptr noundef %i.aq) #14
  %i.as = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ar, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14
  %i.at = load i32, ptr %i.an, align 4
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %aspeed_i2c_bus_new_slave_event.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 1392
  %i.av = load i8, ptr %i.au, align 16
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1096 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = or i32 %i.ba, %i.ax
  store i32 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr %i.bd(ptr noundef nonnull %i.e) #14, !inline_history !34
  tail call void @qemu_set_irq(ptr noundef %i.be, i32 noundef 1) #14
  br label %aspeed_i2c_bus_new_slave_event.exit

bb.i:                                             ; preds = %bb.b
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 1024
  %.not41.i = icmp eq i32 %i.bg, 0
  br i1 %.not41.i, label %aspeed_i2c_bus_new_slave_event.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.aspeed_i2c_bus_new_slave_event, i32 noundef %1) #14
  br label %aspeed_i2c_bus_new_slave_event.exit

bb.k:                                             ; preds = %bb.a
  switch i32 %1, label %aspeed_i2c_bus_new_slave_event.exit [
    i32 2, label %bb.l
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i32 %i.k, 9
  %i.bi = and i32 %i.bh, 65024
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1440 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, -65281
  %i.bm = or disjoint i32 %i.bl, %i.bi
  store i32 %i.bm, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 1424 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 16
  %i.bp = or i32 %i.bo, 132
  store i32 %i.bp, ptr %i.bn, align 16
  %.val.i = load i32, ptr %i.g, align 4
  %i.bq = and i32 %.val.i, 4
  %.not.i50 = icmp eq i32 %i.bq, 0
  br i1 %.not.i50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 1416 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, -7864321
  %i.bu = or disjoint i32 %i.bt, 3145728
  store i32 %i.bu, ptr %i.br, align 8
  br label %aspeed_i2c_set_state.exit

bb.n:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 1428 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, -7864321
  %i.by = or disjoint i32 %i.bx, 3145728
  store i32 %i.by, ptr %i.bv, align 4
  br label %aspeed_i2c_set_state.exit

bb.o:                                             ; preds = %bb.k
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 1424 ; 2 uses
  %i.bz = load i32, ptr %2, align 8
  %i.ca = or i32 %i.bz, 16
  store i32 %i.ca, ptr %2, align 8
  %.val.i51 = load i32, ptr %i.g, align 4
  %i.cb = and i32 %.val.i51, 4
  %.not.i52 = icmp eq i32 %i.cb, 0
  br i1 %.not.i52, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 1416 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, -7864321
  store i32 %i.ce, ptr %i.cc, align 8
  br label %aspeed_i2c_set_state.exit

bb.q:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 1428 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, -7864321
  store i32 %i.ch, ptr %i.cf, align 4
  br label %aspeed_i2c_set_state.exit

aspeed_i2c_set_state.exit:                        ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %i.e)
  br label %aspeed_i2c_bus_new_slave_event.exit

aspeed_i2c_bus_new_slave_event.exit:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %aspeed_i2c_set_state.exit
  %.0 = phi i32 [ -1, %bb.k ], [ 0, %aspeed_i2c_set_state.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.e ], [ -1, %bb.j ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_i2c_bus_slave_send_async(ptr noundef %0, i8 noundef zeroext %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #14
  %i.c = tail call ptr @qdev_get_parent_bus(ptr noundef %i.b) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef 238, ptr noundef nonnull @__func__.ASPEED_I2C_BUS) #14 ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 808
  %.val21 = load ptr, ptr %i.g, align 8           ; 2 uses
  %i.h = getelementptr i8, ptr %.val21, i64 1100
  %.val21.val = load i32, ptr %i.h, align 4
  %i.i = and i32 %.val21.val, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.val21, i64 29816
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1640 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call i32 @address_space_write(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 1) #14
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %aspeed_i2c_bus_new_slave_send_async.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.17, i32 noundef 1455, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_i2c_bus_new_slave_send_async) #15
  unreachable

aspeed_i2c_bus_new_slave_send_async.exit:         ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1492 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1484 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = add i32 %i.u, 65536
  %i.w = and i32 %i.v, 536805376
  %i.x = and i32 %i.u, -536805377
  %i.y = or disjoint i32 %i.w, %i.x
  store i32 %i.y, ptr %i.t, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1376
  %i.aa = load ptr, ptr %i.z, align 16
  call void @i2c_ack(ptr noundef %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = zext i8 %1 to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 1440 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, -65281
  %i.af = shl nuw nsw i32 %i.ab, 8
  %i.ag = or disjoint i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1424 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = or i32 %i.ai, 4
  store i32 %i.aj, ptr %i.ah, align 8
  tail call fastcc void @aspeed_i2c_bus_raise_interrupt(ptr noundef nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %aspeed_i2c_bus_new_slave_send_async.exit
  ret void
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_i2c_reset_hold(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store i32 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_i2c_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #14 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C) #14 ; 14 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #14
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #14 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 193
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.n = load i32, ptr %i.m, align 8
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  tail call void @sysbus_init_irq(ptr noundef %i.a, ptr noundef nonnull %i.q) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.t = load i64, ptr %i.s, align 8
  tail call void @memory_region_init_io(ptr noundef nonnull %i.r, ptr noundef %i.b, ptr noundef nonnull @aspeed_i2c_ctrl_ops, ptr noundef %i.b, ptr noundef nonnull @.str.4, i64 noundef %i.t) #14
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.r) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1112 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noalias dereferenceable_or_null(15) ptr @g_malloc(i64 noundef 15) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.w, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 noundef 15, i1 noundef false) #14
  store ptr %i.w, ptr %i.u, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8
  %.not73 = icmp eq i8 %i.y, 0
  br i1 %.not73, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 3440
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [1648 x i8], ptr %i.z, i64 %indvars.iv ; 5 uses
  %i.ac = load i8, ptr %i.aa, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv, %i.ad
  %i.af = select i1 %i.ae, i32 1, i32 5
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ai = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.109, ptr noundef %i.ag, i32 noundef %i.ah) #14 ; 3 uses
  %i.aj = tail call zeroext i1 @object_property_set_link(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.b, ptr noundef %1) #14
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call zeroext i1 @object_property_set_uint(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.79, i64 noundef %indvars.iv, ptr noundef %1) #14
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = tail call zeroext i1 @object_property_set_str(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.81, ptr noundef %i.ai, ptr noundef %1) #14
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #14
  %i.an = tail call zeroext i1 @sysbus_realize(ptr noundef %i.am, ptr noundef %1) #14
  br i1 %i.an, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.af, %i.ah
  %i.ap = mul i32 %i.ao, %i.j
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.r, i64 noundef %i.aq, ptr noundef nonnull %i.ar) #14
  tail call void @g_free(ptr noundef %i.ai) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i8, ptr %i.x, align 8              ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.d, label %._crit_edge, !llvm.loop !35

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
end_hunk_2
