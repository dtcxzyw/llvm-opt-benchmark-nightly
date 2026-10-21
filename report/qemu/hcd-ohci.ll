Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hcd-ohci?download=true
inline.NumInlined: 199
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ohci_mem_write:bb.a
bb.m:                                             ; preds = %bb.l, %trace_usb_ohci_mem_port_write.exit
  %i.al = and i32 %i.t, 2
  %i.am = tail call fastcc i32 @ohci_port_set_if_connected(ptr noundef nonnull %0, i32 noundef range(i32 0, 1073741803) %i.aa, i32 noundef %i.al) ; 0 uses
  %i.an = and i32 %i.t, 4
  %i.ao = tail call fastcc i32 @ohci_port_set_if_connected(ptr noundef nonnull %0, i32 noundef range(i32 0, 1073741803) %i.aa, i32 noundef %i.an)
  %.not31.i = icmp eq i32 %i.ao, 0
  %i.ap = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i = select i1 %.not31.i, i1 true, i1 %.not.i.i, !prof !14
  br i1 %or.cond.i, label %trace_usb_ohci_port_suspend.exit.i, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.aq = load i16, ptr @_TRACE_USB_OHCI_PORT_SUSPEND_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not1.i.i, label %trace_usb_ohci_port_suspend.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 32768
  %.not2.i.i = icmp eq i32 %i.as, 0
  br i1 %.not2.i.i, label %trace_usb_ohci_port_suspend.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, i32 noundef range(i32 0, 1073741803) %i.aa) #11
  br label %trace_usb_ohci_port_suspend.exit.i

trace_usb_ohci_port_suspend.exit.i:               ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.at = and i32 %i.t, 16
  %i.au = tail call fastcc i32 @ohci_port_set_if_connected(ptr noundef nonnull %0, i32 noundef range(i32 0, 1073741803) %i.aa, i32 noundef %i.at)
  %.not32.i = icmp eq i32 %i.au, 0
  br i1 %.not32.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %trace_usb_ohci_port_suspend.exit.i
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i36.i = icmp eq i32 %i.av, 0
  br i1 %.not.i36.i, label %trace_usb_ohci_port_reset.exit.i, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.aw = load i16, ptr @_TRACE_USB_OHCI_PORT_RESET_DSTATE, align 2
  %.not1.i37.i = icmp eq i16 %i.aw, 0
  br i1 %.not1.i37.i, label %trace_usb_ohci_port_reset.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr @qemu_loglevel, align 4
  %i.ay = and i32 %i.ax, 32768
  %.not2.i38.i = icmp eq i32 %i.ay, 0
  br i1 %.not2.i38.i, label %trace_usb_ohci_port_reset.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.119, i32 noundef range(i32 0, 1073741803) %i.aa) #11
  br label %trace_usb_ohci_port_reset.exit.i

trace_usb_ohci_port_reset.exit.i:                 ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.az = load ptr, ptr %i.ad, align 8
  tail call void @usb_device_reset(ptr noundef %i.az) #11
  %i.ba = load i32, ptr %i.ae, align 8
  %i.bb = and i32 %i.ba, -1048595
  %i.bc = or disjoint i32 %i.bb, 1048578
  store i32 %i.bc, ptr %i.ae, align 8
  br label %bb.u

bb.u:                                             ; preds = %trace_usb_ohci_port_reset.exit.i, %trace_usb_ohci_port_suspend.exit.i
  %i.bd = and i32 %i.t, 512
  %.not33.i = icmp eq i32 %i.bd, 0
  br i1 %.not33.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr [80 x i8], ptr %0, i64 %i.ac
  %i.bf = getelementptr i8, ptr %i.be, i64 672    ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = and i32 %i.bg, -278
  store i32 %i.bh, ptr %i.bf, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = and i32 %i.t, 256
  %.not34.i = icmp eq i32 %i.bi, 0
  br i1 %.not34.i, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load i32, ptr %i.ae, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr [80 x i8], ptr %0, i64 %i.ac
  %i.bk = getelementptr i8, ptr %i.bj, i64 672    ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, 256                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i
  %i.bn = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.bm, %bb.x ]
  %.not35.i = icmp eq i32 %i.af, %i.bn
  br i1 %.not35.i, label %trace_usb_ohci_mem_write_unaligned.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 16
  %i.bq = or i32 %i.bp, 64                        ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = and i32 %i.bs, %i.bq
  %.not4.i.i.i = icmp ne i32 %i.bt, 0
  %.not.i.inv.i.i = icmp slt i32 %i.bs, 0
  %narrow.i.i = select i1 %.not.i.inv.i.i, i1 %.not4.i.i.i, i1 false
  %.0.i.i.i = zext i1 %narrow.i.i to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bv = load ptr, ptr %i.bu, align 16
  tail call void @qemu_set_irq(ptr noundef %i.bv, i32 noundef %.0.i.i.i) #11
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.aa:                                            ; preds = %bb.f
  %i.bw = lshr exact i64 %1, 2                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @ohci_reg_names, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  br label %ohci_reg_name.exit

ohci_reg_name.exit:                               ; preds = %.ohci_reg_name.exit_crit_edge, %bb.aa
  %.pre-phi = phi i64 [ %.pre, %.ohci_reg_name.exit_crit_edge ], [ %i.bw, %bb.aa ] ; 2 uses
  %.0.i = phi ptr [ @.str.94, %.ohci_reg_name.exit_crit_edge ], [ %i.by, %bb.aa ]
  %i.bz = trunc i64 %1 to i32                     ; 2 uses
  %i.ca = trunc i64 %.pre-phi to i32
  %i.cb = trunc i64 %2 to i32                     ; 18 uses
  %i.cc = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i77 = icmp eq i32 %i.cc, 0
  br i1 %.not.i77, label %trace_usb_ohci_mem_write.exit, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %ohci_reg_name.exit
  %i.cd = load i16, ptr @_TRACE_USB_OHCI_MEM_WRITE_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.cd, 0
  br i1 %.not4.i, label %trace_usb_ohci_mem_write.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load i32, ptr @qemu_loglevel, align 4
  %i.cf = and i32 %i.ce, 32768
  %.not5.i78 = icmp eq i32 %i.cf, 0
  br i1 %.not5.i78, label %trace_usb_ohci_mem_write.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, i32 noundef %3, ptr noundef %.0.i, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cb) #11
  br label %trace_usb_ohci_mem_write.exit

trace_usb_ohci_mem_write.exit:                    ; preds = %ohci_reg_name.exit, %bb.ab, %bb.ac, %bb.ad
  switch i64 %.pre-phi, label %bb.ay [
    i64 1, label %bb.ae
    i64 2, label %bb.af
    i64 3, label %bb.ah
    i64 4, label %bb.ai
    i64 5, label %bb.aj
    i64 6, label %bb.ak
    i64 7, label %trace_usb_ohci_mem_write_unaligned.exit
    i64 8, label %bb.al
    i64 9, label %bb.am
    i64 10, label %bb.an
    i64 11, label %bb.ao
    i64 13, label %bb.ap
    i64 15, label %trace_usb_ohci_mem_write_unaligned.exit
    i64 16, label %bb.aq
    i64 17, label %bb.ar
    i64 18, label %trace_usb_ohci_mem_write_unaligned.exit
    i64 19, label %trace_usb_ohci_mem_write_unaligned.exit
    i64 20, label %bb.as
    i64 24, label %bb.at
    i64 25, label %bb.au
    i64 26, label %bb.aw
    i64 27, label %bb.ax
  ]

bb.ae:                                            ; preds = %trace_usb_ohci_mem_write.exit
  tail call fastcc void @ohci_set_ctl(ptr noundef %0, i32 noundef %i.cb)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.af:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.cb, -193
  %i.cj = or i32 %i.ch, %i.ci                     ; 2 uses
  store i32 %i.cj, ptr %i.cg, align 4
  %i.ck = and i32 %i.cj, 1
  %.not73 = icmp eq i32 %i.ck, 0
  br i1 %.not73, label %trace_usb_ohci_mem_write_unaligned.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @ohci_soft_reset(ptr noundef nonnull %0)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ah:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 16
  %i.cn = xor i32 %i.cb, -1
  %i.co = and i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.cl, align 16
  tail call fastcc void @ohci_intr_update(ptr noundef %0)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ai:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = or i32 %i.cq, %i.cb                     ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 4
  %.not.i79 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i79, label %ohci_intr_update.exit, label %4

4:                                                ; preds = %bb.ai
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, %i.cr
  %.not4.i80 = icmp ne i32 %7, 0
  %spec.select.i = zext i1 %.not4.i80 to i32
  br label %ohci_intr_update.exit

ohci_intr_update.exit:                            ; preds = %bb.ai, %4
  %.0.i81 = phi i32 [ 0, %bb.ai ], [ %spec.select.i, %4 ]
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %9 = load ptr, ptr %8, align 16
  tail call void @qemu_set_irq(ptr noundef %9, i32 noundef %.0.i81) #11
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.aj:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = xor i32 %i.cb, -1
  %i.cv = and i32 %i.ct, %i.cu                    ; 3 uses
  store i32 %i.cv, ptr %i.cs, align 4
  %.not.i82 = icmp sgt i32 %i.cv, -1
  br i1 %.not.i82, label %ohci_intr_update.exit86, label %10

10:                                               ; preds = %bb.aj
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, %i.cv
  %.not4.i83 = icmp ne i32 %13, 0
  %spec.select.i84 = zext i1 %.not4.i83 to i32
  br label %ohci_intr_update.exit86

ohci_intr_update.exit86:                          ; preds = %bb.aj, %10
  %.0.i85 = phi i32 [ 0, %bb.aj ], [ %spec.select.i84, %10 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %15 = load ptr, ptr %14, align 16
  tail call void @qemu_set_irq(ptr noundef %15, i32 noundef %.0.i85) #11
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ak:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cw = and i32 %i.cb, -256
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %i.cw, ptr %i.cx, align 8
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.al:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.cy = and i32 %i.cb, -16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %i.cy, ptr %i.cz, align 4
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.am:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.da = and i32 %i.cb, -16
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.da, ptr %i.db, align 16
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.an:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.dc = and i32 %i.cb, -16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 %i.dc, ptr %i.dd, align 4
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ao:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.de = and i32 %i.cb, -16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.de, ptr %i.df, align 8
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ap:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.dg = lshr i64 %2, 16
  %i.dh = trunc i64 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i16 %i.dh, ptr %i.di, align 8
  %i.dj = lshr i64 %2, 31
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = and i8 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 570
  store i8 %i.dl, ptr %i.dm, align 2
  %i.dn = trunc i64 %2 to i16
  tail call fastcc void @ohci_set_frame_interval(ptr noundef %0, i16 noundef zeroext %i.dn)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.aq:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.do = and i32 %i.cb, 65535
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i32 %i.do, ptr %i.dp, align 4
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ar:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.dq = and i32 %i.cb, 65535
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 %i.dq, ptr %i.dr, align 8
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.as:                                            ; preds = %trace_usb_ohci_mem_write.exit
  tail call fastcc void @ohci_set_hub_status(ptr noundef %0, i32 noundef %i.cb)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.at:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = and i32 %i.dt, %i.cb
  %i.dx = xor i32 %i.dw, -1
  %i.dy = and i32 %i.dv, %i.dx
  store i32 %i.dy, ptr %i.du, align 8
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.au:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.dz = and i32 %i.cb, -2
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i32 %i.dz, ptr %i.ea, align 16
  %i.eb = and i64 %2, 1
  %.not72 = icmp eq i64 %i.eb, 0
  br i1 %.not72, label %trace_usb_ohci_mem_write_unaligned.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call fastcc void @ohci_soft_reset(ptr noundef nonnull %0)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 0, ptr %i.ec, align 8
  tail call fastcc void @ohci_roothub_reset(ptr noundef nonnull %0)
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.aw:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1804
  store i32 %i.cb, ptr %i.ed, align 4
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ax:                                            ; preds = %trace_usb_ohci_mem_write.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1812
  store i32 %i.cb, ptr %i.ee, align 4
  br label %trace_usb_ohci_mem_write_unaligned.exit

bb.ay:                                            ; preds = %trace_usb_ohci_mem_write.exit
  tail call fastcc void @trace_usb_ohci_mem_write_bad_offset(i32 noundef %i.bz)
  br label %trace_usb_ohci_mem_write_unaligned.exit

trace_usb_ohci_mem_write_unaligned.exit:          ; preds = %bb.z, %bb.y, %bb.e, %bb.d, %bb.c, %bb.b, %trace_usb_ohci_mem_write.exit, %trace_usb_ohci_mem_write.exit, %trace_usb_ohci_mem_write.exit, %bb.ae, %bb.ah, %ohci_intr_update.exit, %ohci_intr_update.exit86, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.aw, %bb.ax, %bb.ay, %bb.ag, %bb.af, %bb.av, %bb.au, %trace_usb_ohci_mem_write.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, -2147418112) i32 @ohci_get_frame_remaining(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 192
  %.not = icmp eq i32 %i.c, 128
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.e = load i8, ptr %i.d, align 2
  %i.f = zext i8 %i.e to i32
  %i.g = shl i32 %i.f, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.j = load i64, ptr %i.i, align 16
  %i.k = sub i64 %i.h, %i.j                       ; 2 uses
  %.b11 = load i1, ptr @usb_frame_time, align 8
  %.not1213 = icmp slt i64 %i.k, 1000000
  %.not12 = select i1 %.b11, i1 %.not1213, i1 false
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.m = load i8, ptr %i.l, align 2
  %i.n = zext i8 %i.m to i32
  %i.o = shl i32 %i.n, 31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %.lhs.trunc = trunc nuw nsw i64 %spec.store.select to i32
  %i.p = udiv i32 %.lhs.trunc, 83
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.r = load i16, ptr %i.q, align 4
  %i.s = trunc nuw nsw i32 %i.p to i16
  %i.t = sub i16 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.v = load i8, ptr %i.u, align 2
  %i.w = zext i8 %i.v to i32
  %i.x = shl i32 %i.w, 31
  %i.y = zext i16 %i.t to i32
  %i.z = or disjoint i32 %i.x, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.z, %bb.e ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_usb_ohci_mem_read_bad_offset(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_USB_OHCI_MEM_READ_BAD_OFFSET_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.92, i32 noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ohci_set_ctl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 192
  store i32 %1, ptr %i.a, align 8
  %i.d = and i32 %1, 192                          ; 3 uses
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %trace_usb_ohci_resume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_usb_ohci_set_ctl.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr @_TRACE_USB_OHCI_SET_CTL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_usb_ohci_set_ctl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_usb_ohci_set_ctl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.121, ptr noundef %i.g, i32 noundef range(i32 0, 193) %i.d) #11
  br label %trace_usb_ohci_set_ctl.exit

trace_usb_ohci_set_ctl.exit:                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.l = lshr exact i32 %i.d, 6
  switch i32 %i.l, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.j
    i32 1, label %bb.n
    i32 0, label %bb.r
  ]

bb.f:                                             ; preds = %trace_usb_ohci_set_ctl.exit
  %i.m = load ptr, ptr %i.f, align 16
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %ohci_bus_start.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.o = load i16, ptr @_TRACE_USB_OHCI_START_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.o, 0
  br i1 %.not1.i.i, label %ohci_bus_start.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not2.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i.i, label %ohci_bus_start.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.122, ptr noundef %i.m) #11
  br label %ohci_bus_start.exit

ohci_bus_start.exit:                              ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.r = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %i.r, ptr %i.s, align 16
  %i.t = getelementptr i8, ptr %0, i64 504
  %.val.i = load ptr, ptr %i.t, align 8
  %.b.i.i = load i1, ptr @usb_frame_time, align 8
  %i.u = select i1 %.b.i.i, i64 1000000, i64 0
  %i.v = add i64 %i.u, %i.r
  tail call void @timer_mod(ptr noundef %.val.i, i64 noundef %i.v) #11
  br label %trace_usb_ohci_resume.exit

bb.j:                                             ; preds = %trace_usb_ohci_set_ctl.exit
  %i.w = load ptr, ptr %i.f, align 16
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i14 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i14, label %ohci_bus_stop.exit, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.y = load i16, ptr @_TRACE_USB_OHCI_STOP_DSTATE, align 2
  %.not1.i.i15 = icmp eq i16 %i.y, 0
  br i1 %.not1.i.i15, label %ohci_bus_stop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not2.i.i16 = icmp eq i32 %i.aa, 0
  br i1 %.not2.i.i16, label %ohci_bus_stop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef %i.w) #11
  br label %ohci_bus_stop.exit

ohci_bus_stop.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @timer_del(ptr noundef %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 16
  %i.af = and i32 %i.ae, -5                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, %i.af
  %.not4.i = icmp ne i32 %i.ai, 0
  %.not.i17.inv = icmp slt i32 %i.ah, 0
  %narrow = select i1 %.not.i17.inv, i1 %.not4.i, i1 false
  %.0.i = zext i1 %narrow to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load ptr, ptr %i.aj, align 16
  tail call void @qemu_set_irq(ptr noundef %i.ak, i32 noundef %.0.i) #11
  br label %trace_usb_ohci_resume.exit
end_hunk_0
