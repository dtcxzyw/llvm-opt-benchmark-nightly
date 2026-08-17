inline.NumInlined: 319
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@xhci_kick_epctx:bb.a
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %xhci_slot_ok.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %.not125 = icmp eq i32 %i.cw, 0
  br i1 %.not125, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cx = call fastcc ptr @xhci_find_stream(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.a) ; 4 uses
  %.not126 = icmp eq ptr %i.cx, null
  br i1 %.not126, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @xhci_set_ep_state(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.cx, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  tail call fastcc void @xhci_set_ep_state(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.0116 = phi ptr [ %i.cx, %bb.ah ], [ null, %bb.ai ]
  %.pn = phi ptr [ %i.cx, %bb.ah ], [ %0, %bb.ai ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.ah ], [ 0, %bb.ai ]     ; 3 uses
  %.1114 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 3 uses
  %i.cy = load i64, ptr %.1114, align 8
  %.not127 = icmp eq i64 %i.cy, 0
  br i1 %.not127, label %xhci_slot_ok.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = load i32, ptr %i.k, align 8
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.k, align 8
  %i.db = getelementptr i8, ptr %.pn, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 29912 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.al

bb.al:                                            ; preds = %.thread157, %bb.ak
  %.0112 = phi i32 [ 0, %bb.ak ], [ %i.ne, %.thread157 ]
  %.1114.val = load i64, ptr %.1114, align 8
  %.1114.val133 = load i8, ptr %i.db, align 8, !range !8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !7
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %bb.al
  %.036.i = phi i1 [ false, %bb.al ], [ %.238.i, %.thread.i ] ; 2 uses
  %.034.i = phi i32 [ 0, %bb.al ], [ %.135.i, %.thread.i ] ; 4 uses
  %.031.i = phi i8 [ %.1114.val133, %bb.al ], [ %.233.i, %.thread.i ] ; 5 uses
  %.029.i = phi i64 [ %.1114.val, %bb.al ], [ %.130.i, %.thread.i ] ; 2 uses
  %.027.i = phi i32 [ 0, %bb.al ], [ %.128.i, %.thread.i ] ; 4 uses
  %i.dl = load ptr, ptr %i.dc, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !10
  fence seq_cst
  %i.dm = call i32 @address_space_rw(ptr noundef %i.dl, i64 noundef %.029.i, i64 4294967296, ptr noundef nonnull %2, i64 noundef range(i64 1, 21) 16, i1 noundef zeroext false) #17
  %.not.i137 = icmp eq i32 %i.dm, 0
  br i1 %.not.i137, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = load i32, ptr @qemu_loglevel, align 4
  %i.do = and i32 %i.dn, 2048
  %.not14.i = icmp eq i32 %i.do, 0
  br i1 %.not14.i, label %xhci_ring_chain_length.exit.thread, label %xhci_ring_chain_length.exit.thread.sink.split, !prof !11

bb.ao:                                            ; preds = %bb.am
  %i.dp = load i32, ptr %i.dd, align 4            ; 4 uses
  %i.dq = and i32 %i.dp, 1
  %i.dr = zext nneg i8 %.031.i to i32
  %.not42.i = icmp eq i32 %i.dq, %i.dr
  br i1 %.not42.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = sub i32 0, %.027.i
  br label %xhci_ring_chain_length.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dt = lshr i32 %i.dp, 10
  %i.du = and i32 %i.dt, 63                       ; 2 uses
  %i.dv = icmp eq i32 %i.du, 6
  br i1 %i.dv, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.dw = add i32 %.034.i, 1                      ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 32
  br i1 %i.dx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dy = sub i32 0, %.027.i
  br label %xhci_ring_chain_length.exit

bb.at:                                            ; preds = %bb.ar
  %i.dz = load i64, ptr %2, align 8
  %i.ea = trunc i32 %i.dp to i8
  %i.eb = lshr i8 %i.ea, 1
  %i.ec = and i8 %i.eb, 1
  %.132.i = xor i8 %.031.i, %i.ec
  br label %.thread.i

bb.au:                                            ; preds = %bb.aq
  %i.ed = add nsw i32 %.027.i, 1                  ; 4 uses
  %i.ee = add i64 %.029.i, 16                     ; 3 uses
  switch i32 %i.du, label %bb.av [
    i32 2, label %.thread.i
    i32 4, label %.thread3.i
  ]

bb.av:                                            ; preds = %bb.au
  br i1 %.036.i, label %.thread.i, label %.thread3.i

.thread3.i:                                       ; preds = %bb.av, %bb.au
  %i.ef = and i32 %i.dp, 16
  %.not43.i = icmp eq i32 %i.ef, 0
  br i1 %.not43.i, label %xhci_ring_chain_length.exit, label %.thread.i

.thread.i:                                        ; preds = %.thread3.i, %bb.av, %bb.au, %bb.at
  %.238.i = phi i1 [ true, %bb.av ], [ true, %bb.au ], [ %.036.i, %bb.at ], [ false, %.thread3.i ]
  %.135.i = phi i32 [ %.034.i, %bb.av ], [ %.034.i, %bb.au ], [ %i.dw, %bb.at ], [ %.034.i, %.thread3.i ]
  %.233.i = phi i8 [ %.031.i, %bb.av ], [ %.031.i, %bb.au ], [ %.132.i, %bb.at ], [ %.031.i, %.thread3.i ]
  %.130.i = phi i64 [ %i.ee, %bb.av ], [ %i.ee, %bb.au ], [ %i.dz, %bb.at ], [ %i.ee, %.thread3.i ]
  %.128.i = phi i32 [ %i.ed, %bb.av ], [ %i.ed, %bb.au ], [ %.027.i, %bb.at ], [ %i.ed, %.thread3.i ] ; 2 uses
  %i.eg = icmp slt i32 %.128.i, 131072
  br i1 %i.eg, label %bb.am, label %bb.aw, !llvm.loop !17

bb.aw:                                            ; preds = %.thread.i
  %i.eh = load i32, ptr @qemu_loglevel, align 4
  %i.ei = and i32 %i.eh, 2048
  %.not15.i = icmp eq i32 %i.ei, 0
  br i1 %.not15.i, label %xhci_ring_chain_length.exit.thread, label %xhci_ring_chain_length.exit.thread.sink.split, !prof !11

xhci_ring_chain_length.exit.thread.sink.split:    ; preds = %bb.aw, %bb.an
  %.str.46.sink = phi ptr [ @.str.18, %bb.an ], [ @.str.46, %bb.aw ]
  call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.46.sink, ptr noundef nonnull @__func__.xhci_ring_chain_length) #17
  br label %xhci_ring_chain_length.exit.thread

xhci_ring_chain_length.exit.thread:               ; preds = %xhci_ring_chain_length.exit.thread.sink.split, %bb.aw, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

xhci_ring_chain_length.exit:                      ; preds = %.thread3.i, %bb.ap, %bb.as
  %.2.i = phi i32 [ %i.ds, %bb.ap ], [ %i.dy, %bb.as ], [ %i.ed, %.thread3.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ej = icmp slt i32 %.2.i, 1
  br i1 %i.ej, label %.loopexit, label %bb.ay

.loopexit:                                        ; preds = %xhci_ring_chain_length.exit, %xhci_ring_chain_length.exit.thread
  %i.ek = load i32, ptr %i.dg, align 8            ; 2 uses
  switch i32 %i.ek, label %xhci_ep_alloc_xfer.exit.thread [
    i32 1, label %bb.ax
    i32 5, label %bb.ax
  ]

bb.ax:                                            ; preds = %.loopexit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.xhci_kick_epctx.ev, i64 32, i1 false)
  %i.el = icmp eq i32 %i.ek, 5
  %i.em = select i1 %i.el, i32 15, i32 14
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.em, ptr %i.en, align 4
  %i.eo = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.ep, ptr %i.eq, align 8
  %i.er = load i32, ptr %i.e, align 4
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.es, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = add i32 %i.eo, -1
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [272 x i8], ptr %i.b, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12498
  %i.fb = load i16, ptr %i.fa, align 2
  %i.fc = zext i16 %i.fb to i32
  call fastcc void @xhci_event(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %xhci_ep_alloc_xfer.exit.thread

bb.ay:                                            ; preds = %xhci_ring_chain_length.exit
  %i.fd = load i32, ptr %i.cv, align 4
  %i.fe = add i32 %i.fd, 16
  %i.ff = load i32, ptr %i.de, align 8
  %.not.i138 = icmp ult i32 %i.ff, %i.fe
  br i1 %.not.i138, label %.critedge132.lr.ph, label %xhci_ep_alloc_xfer.exit.thread

.critedge132.lr.ph:                               ; preds = %bb.ay
  %i.fg = call noalias dereferenceable_or_null(256) ptr @g_malloc0(i64 noundef 256) #19 ; 51 uses
  store ptr %0, ptr %i.fg, align 8
  %i.fh = zext nneg i32 %.2.i to i64
  %i.fi = call noalias ptr @g_malloc_n(i64 noundef %i.fh, i64 noundef 32) #20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 208 ; 6 uses
  store ptr %i.fi, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 200 ; 3 uses
  store i32 %.2.i, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 6 uses
  call void @usb_packet_init(ptr noundef nonnull %i.fl) #17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 240 ; 8 uses
  store ptr null, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 248 ; 3 uses
  store ptr %i.fn, ptr %i.fo, align 8
  store ptr %i.fg, ptr %i.fn, align 8
  store ptr %i.fm, ptr %i.df, align 8
  %i.fp = load i32, ptr %i.de, align 8
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.de, align 8
  %wide.trip.count = zext nneg i32 %.2.i to i64
  br label %.critedge132

bb.az:                                            ; preds = %.critedge132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.critedge132, !llvm.loop !18

.critedge132:                                     ; preds = %.critedge132.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.critedge132.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 2 uses
  %i.fr = load ptr, ptr %i.fj, align 8
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %indvars.iv
  %i.ft = call fastcc i32 @xhci_ring_fetch(ptr noundef %i.b, ptr noundef nonnull %.1114, ptr noundef %i.fs, ptr noundef null)
  %.not129.not = icmp eq i32 %i.ft, 0
  br i1 %.not129.not, label %bb.ba, label %bb.az

bb.ba:                                            ; preds = %.critedge132
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 1788 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = or i32 %i.fv, 4096
  store i32 %i.fw, ptr %i.fu, align 4
  %i.fx = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not.i139 = icmp eq ptr %i.fx, null
  %i.fy = load ptr, ptr %i.fo, align 8            ; 3 uses
  br i1 %.not.i139, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 248
  store ptr %i.fy, ptr %i.fz, align 8
  br label %xhci_ep_free_xfer.exit140

bb.bc:                                            ; preds = %bb.ba
  %i.ga = load ptr, ptr %i.fg, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store ptr %i.fy, ptr %i.gb, align 8
  br label %xhci_ep_free_xfer.exit140

xhci_ep_free_xfer.exit140:                        ; preds = %bb.bb, %bb.bc
  %i.gc = load ptr, ptr %i.fm, align 8
  store ptr %i.gc, ptr %i.fy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  %i.gd = load ptr, ptr %i.fg, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = add i32 %i.gf, -1
  store i32 %i.gg, ptr %i.ge, align 8
  call void @usb_packet_cleanup(ptr noundef nonnull %i.fl) #17
  %i.gh = load ptr, ptr %i.fj, align 8
  call void @g_free(ptr noundef %i.gh) #17
  call void @g_free(ptr noundef nonnull %i.fg) #17
  %i.gi = load i32, ptr %i.k, align 8
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr %i.k, align 8
  br label %xhci_slot_ok.exit.thread

._crit_edge:                                      ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  store i32 %.0, ptr %i.gk, align 8
  %i.gl = load i32, ptr %i.e, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %._crit_edge
  %i.gn = load ptr, ptr %i.fj, align 8            ; 5 uses
  %i.go = load i32, ptr %i.fk, align 8
  %i.gp = add i32 %i.go, -1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gq ; 3 uses
  %i.gs = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i, label %trace_usb_xhci_xfer_start.exit.i, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.gy = load i16, ptr @_TRACE_USB_XHCI_XFER_START_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.gy, 0
  br i1 %.not3.i.i, label %trace_usb_xhci_xfer_start.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gz = load i32, ptr @qemu_loglevel, align 4
  %i.ha = and i32 %i.gz, 32768
  %.not4.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not4.i.i, label %trace_usb_xhci_xfer_start.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef nonnull %i.fg, i32 noundef %i.gu, i32 noundef %i.gw, i32 noundef %.0) #17
  br label %trace_usb_xhci_xfer_start.exit.i

trace_usb_xhci_xfer_start.exit.i:                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 64512
  %i.he = icmp eq i32 %i.hd, 7168
  br i1 %i.he, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %trace_usb_xhci_xfer_start.exit.i
  %i.hf = load i32, ptr %i.fk, align 8
  %i.hg = icmp ugt i32 %i.hf, 2
  %spec.select.idx.i = select i1 %i.hg, i64 -32, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.gr, i64 %spec.select.idx.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %trace_usb_xhci_xfer_start.exit.i
  %.0.i141 = phi ptr [ %i.gr, %trace_usb_xhci_xfer_start.exit.i ], [ %spec.select.i, %bb.bh ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.hi = load i32, ptr %i.hh, align 4            ; 2 uses
  %i.hj = and i32 %i.hi, 64512
  %.not.i142 = icmp eq i32 %i.hj, 2048
  br i1 %.not.i142, label %bb.bj, label %xhci_fire_ctl_transfer.exit

bb.bj:                                            ; preds = %bb.bi
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i141, i64 12
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 64512
  %.not26.i = icmp ne i32 %i.hm, 4096
  %i.hn = and i32 %i.hi, 64
  %.not27.i = icmp eq i32 %i.hn, 0
  %or.cond.i = or i1 %.not27.i, %.not26.i
  br i1 %or.cond.i, label %xhci_fire_ctl_transfer.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = and i32 %i.hp, 131071
  %.not28.i = icmp eq i32 %i.hq, 8
  br i1 %.not28.i, label %bb.bl, label %xhci_fire_ctl_transfer.exit

bb.bl:                                            ; preds = %bb.bk
  %i.hr = load i64, ptr %i.gn, align 8
  %i.hs = and i64 %i.hr, 128
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fg, i64 196
  %i.hv = zext i1 %i.ht to i8
  store i8 %i.hv, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fg, i64 197
  store i8 0, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fg, i64 198
  store i8 0, ptr %i.hx, align 2
  %i.hy = call fastcc i32 @xhci_setup_packet(ptr noundef nonnull %i.fg)
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %xhci_fire_ctl_transfer.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = load i64, ptr %i.gn, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  store i64 %i.ia, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void @usb_handle_packet(ptr noundef %i.if, ptr noundef nonnull %i.fl) #17
  call fastcc void @xhci_try_complete_packet(ptr noundef nonnull %i.fg)
  br label %xhci_fire_ctl_transfer.exit

bb.bn:                                            ; preds = %._crit_edge
  %i.ig = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i143 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i143, label %trace_usb_xhci_xfer_start.exit.i146, label %bb.bo, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.im = load i16, ptr @_TRACE_USB_XHCI_XFER_START_DSTATE, align 2
  %.not3.i.i144 = icmp eq i16 %i.im, 0
  br i1 %.not3.i.i144, label %trace_usb_xhci_xfer_start.exit.i146, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.in = load i32, ptr @qemu_loglevel, align 4
  %i.io = and i32 %i.in, 32768
  %.not4.i.i145 = icmp eq i32 %i.io, 0
  br i1 %.not4.i.i145, label %trace_usb_xhci_xfer_start.exit.i146, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef nonnull %i.fg, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %.0) #17
  br label %trace_usb_xhci_xfer_start.exit.i146

trace_usb_xhci_xfer_start.exit.i146:              ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.ip = load i32, ptr %i.dg, align 8            ; 3 uses
  %i.iq = icmp ugt i32 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fg, i64 196
  %i.is = zext i1 %i.iq to i8
  store i8 %i.is, ptr %i.ir, align 4
  switch i32 %i.ip, label %bb.cb [
    i32 3, label %bb.br
    i32 7, label %bb.br
    i32 2, label %bb.bt
    i32 6, label %bb.bt
    i32 1, label %bb.bu
    i32 5, label %bb.bu
  ]

bb.br:                                            ; preds = %trace_usb_xhci_xfer_start.exit.i146, %trace_usb_xhci_xfer_start.exit.i146
  %i.it = getelementptr inbounds nuw i8, ptr %i.fg, i64 220
  store i32 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fg, i64 197
  store i8 0, ptr %i.iu, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fg, i64 198
  store i8 1, ptr %i.iv, align 2
  %i.iw = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.ix = load i64, ptr %i.dh, align 8
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = sdiv i64 %i.iy, 125000                  ; 3 uses
  %i.ja = load i32, ptr %i.di, align 8            ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not.i.i.i, label %bb.bs, label %xhci_calc_intr_kick.exit.i.i

bb.bs:                                            ; preds = %bb.br
  call void @__assert_fail(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.16, i32 noundef 1749, ptr noundef nonnull @__PRETTY_FUNCTION__.xhci_calc_intr_kick) #18
  unreachable

xhci_calc_intr_kick.exit.i.i:                     ; preds = %bb.br
  %i.jb = load i64, ptr %i.dj, align 8
  %i.jc = zext i32 %i.ja to i64                   ; 2 uses
  %i.jd = add i64 %i.jb, %i.jc
  %i.je = add nsw i64 %i.iz, 4294967295
  %i.jf = add nsw i64 %i.je, %i.jc
  %i.jg = sub i32 0, %i.ja
  %i.jh = zext i32 %i.jg to i64
  %i.ji = and i64 %i.jf, %i.jh
  %i.jj = call i64 @llvm.umax.i64(i64 %i.ji, i64 %i.jd) ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fg, i64 232 ; 2 uses
  store i64 %i.jj, ptr %i.jk, align 8
  %i.jl = icmp ugt i64 %i.jj, %i.iz
  br i1 %i.jl, label %xhci_check_intr_iso_kick.exit.thread.i.i, label %xhci_check_intr_iso_kick.exit.i.i

xhci_check_intr_iso_kick.exit.thread.i.i:         ; preds = %xhci_calc_intr_kick.exit.i.i
  %i.jm = load ptr, ptr %i.dk, align 8
  %i.jn = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.jo = load i64, ptr %i.jk, align 8
  %i.jp = sub i64 %i.jo, %i.iz
  %i.jq = mul i64 %i.jp, 125000
  %i.jr = add i64 %i.jq, %i.jn
  call void @timer_mod(ptr noundef %i.jm, i64 noundef %i.jr) #17
  %i.js = getelementptr inbounds nuw i8, ptr %i.fg, i64 185
  store i8 1, ptr %i.js, align 1
  br label %xhci_fire_ctl_transfer.exit

xhci_check_intr_iso_kick.exit.i.i:                ; preds = %xhci_calc_intr_kick.exit.i.i
  store i64 %i.jj, ptr %i.dj, align 8
  %i.jt = load ptr, ptr %i.dk, align 8
  call void @timer_del(ptr noundef %i.jt) #17
  %4 = getelementptr inbounds nuw i8, ptr %i.fg, i64 185
  store i8 0, ptr %4, align 1
  br label %bb.cf

bb.bt:                                            ; preds = %trace_usb_xhci_xfer_start.exit.i146, %trace_usb_xhci_xfer_start.exit.i146
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fg, i64 220
  store i32 0, ptr %i.ju, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fg, i64 197
  store i8 0, ptr %i.jv, align 1
  %5 = getelementptr inbounds nuw i8, ptr %i.fg, i64 198
  store i8 0, ptr %5, align 2
  br label %bb.cf

bb.bu:                                            ; preds = %trace_usb_xhci_xfer_start.exit.i146, %trace_usb_xhci_xfer_start.exit.i146
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fg, i64 220
  store i32 1, ptr %i.jw, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fg, i64 197
  store i8 1, ptr %i.jx, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fg, i64 198
  store i8 1, ptr %i.jy, align 2
  %i.jz = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.ka = load i64, ptr %i.dh, align 8
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = sdiv i64 %i.kb, 125000                  ; 5 uses
  %i.kd = load ptr, ptr %i.fj, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %i.kf = load i32, ptr %i.ke, align 4            ; 2 uses
  %.not.i37.i.i = icmp sgt i32 %i.kf, -1
  br i1 %.not.i37.i.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kg = load i32, ptr %i.di, align 8            ; 3 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = add nsw i64 %i.kc, 4294967295
  %i.kj = add nsw i64 %i.ki, %i.kh
  %i.kk = sub i32 0, %i.kg
  %i.kl = zext i32 %i.kk to i64
  %i.km = and i64 %i.kj, %i.kl                    ; 4 uses
  %i.kn = load i64, ptr %i.dj, align 8            ; 3 uses
  %.not21.i.i.i = icmp ult i64 %i.km, %i.kn
  br i1 %.not21.i.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ko = shl i32 %i.kg, 2
  %i.kp = zext i32 %i.ko to i64
  %i.kq = add nuw nsw i64 %i.kn, %i.kp
  %.not22.i.i.i = icmp samesign ugt i64 %i.km, %i.kq
  br i1 %.not22.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kr = add nuw nsw i64 %i.kn, %i.kh            ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  store i64 %i.kr, ptr %i.ks, align 8
  br label %xhci_calc_iso_kick.exit.i.i

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  store i64 %i.km, ptr %i.kt, align 8
  br label %xhci_calc_iso_kick.exit.i.i

bb.bz:                                            ; preds = %bb.bu
  %i.ku = lshr i32 %i.kf, 17
  %i.kv = and i32 %i.ku, 16376
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fg, i64 232 ; 2 uses
  %i.ky = and i64 %i.kc, -16384
  %i.kz = or disjoint i64 %i.ky, %i.kw            ; 4 uses
  store i64 %i.kz, ptr %i.kx, align 8
  %i.la = add nsw i64 %i.kz, 256
  %i.lb = icmp ult i64 %i.la, %i.kc
  br i1 %i.lb, label %bb.ca, label %xhci_calc_iso_kick.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.lc = add nsw i64 %i.kz, 16384                ; 2 uses
  store i64 %i.lc, ptr %i.kx, align 8
  br label %xhci_calc_iso_kick.exit.i.i

xhci_calc_iso_kick.exit.i.i:                      ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.ld = phi i64 [ %i.kr, %bb.bx ], [ %i.km, %bb.by ], [ %i.kz, %bb.bz ], [ %i.lc, %bb.ca ] ; 2 uses
  %i.le = icmp ugt i64 %i.ld, %i.kc
  br i1 %i.le, label %xhci_check_intr_iso_kick.exit39.thread.i.i, label %xhci_check_intr_iso_kick.exit39.i.i

xhci_check_intr_iso_kick.exit39.thread.i.i:       ; preds = %xhci_calc_iso_kick.exit.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  %i.lg = load ptr, ptr %i.dk, align 8
  %i.lh = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.li = load i64, ptr %i.lf, align 8
  %i.lj = sub i64 %i.li, %i.kc
  %i.lk = mul i64 %i.lj, 125000
  %i.ll = add i64 %i.lk, %i.lh
  call void @timer_mod(ptr noundef %i.lg, i64 noundef %i.ll) #17
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fg, i64 185
  store i8 1, ptr %i.lm, align 1
  br label %xhci_fire_ctl_transfer.exit

xhci_check_intr_iso_kick.exit39.i.i:              ; preds = %xhci_calc_iso_kick.exit.i.i
  store i64 %i.ld, ptr %i.dj, align 8
  %i.ln = load ptr, ptr %i.dk, align 8
  call void @timer_del(ptr noundef %i.ln) #17
  %6 = getelementptr inbounds nuw i8, ptr %i.fg, i64 185
  store i8 0, ptr %6, align 1
  br label %bb.cf

bb.cb:                                            ; preds = %trace_usb_xhci_xfer_start.exit.i146
  %i.lo = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i40.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not.i40.i.i, label %xhci_fire_ctl_transfer.exit, label %bb.cc, !prof !11

bb.cc:                                            ; preds = %bb.cb
  %i.lp = load i16, ptr @_TRACE_USB_XHCI_UNIMPLEMENTED_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.lp, 0
  br i1 %.not1.i.i.i, label %xhci_fire_ctl_transfer.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lq = load i32, ptr @qemu_loglevel, align 4
  %i.lr = and i32 %i.lq, 32768
  %.not2.i.i.i = icmp eq i32 %i.lr, 0
  br i1 %.not2.i.i.i, label %xhci_fire_ctl_transfer.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef %i.ip) #17
  br label %xhci_fire_ctl_transfer.exit

bb.cf:                                            ; preds = %xhci_check_intr_iso_kick.exit39.i.i, %bb.bt, %xhci_check_intr_iso_kick.exit.i.i
  %i.ls = call fastcc i32 @xhci_setup_packet(ptr noundef nonnull %i.fg)
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %xhci_fire_ctl_transfer.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  call void @usb_handle_packet(ptr noundef %i.lx, ptr noundef nonnull %i.fl) #17
  call fastcc void @xhci_try_complete_packet(ptr noundef nonnull %i.fg)
  br label %xhci_fire_ctl_transfer.exit

xhci_fire_ctl_transfer.exit:                      ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %xhci_check_intr_iso_kick.exit39.thread.i.i, %xhci_check_intr_iso_kick.exit.thread.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %i.ly = load i32, ptr %i.c, align 8
  %i.lz = add i32 %i.ly, -1
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr [272 x i8], ptr %i.b, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 12512
  %i.md = load ptr, ptr %i.mc, align 16           ; 2 uses
  %.not.i147 = icmp eq ptr %i.md, null
  br i1 %.not.i147, label %xhci_ep_alloc_xfer.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %xhci_fire_ctl_transfer.exit
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not6.i148 = icmp eq ptr %i.me, null
  br i1 %.not6.i148, label %xhci_ep_alloc_xfer.exit.thread, label %xhci_slot_ok.exit149

xhci_slot_ok.exit149:                             ; preds = %bb.ch
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 256
  %i.mg = load i8, ptr %i.mf, align 8, !range !8, !noundef !9
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.ci, label %xhci_ep_alloc_xfer.exit.thread

bb.ci:                                            ; preds = %xhci_slot_ok.exit149
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fg, i64 186
  %i.mj = load i8, ptr %i.mi, align 2, !range !8, !noundef !9
  %i.mk = trunc nuw i8 %i.mj to i1
  %i.ml = load i32, ptr %i.cs, align 4            ; 2 uses
  br i1 %i.mk, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @xhci_set_ep_state(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef %.0116, i32 noundef %i.ml)
  %i.mm = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not.i150 = icmp eq ptr %i.mm, null
  %i.mn = load ptr, ptr %i.fo, align 8            ; 3 uses
  br i1 %.not.i150, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 248
  store ptr %i.mn, ptr %i.mo, align 8
  br label %.thread

bb.cl:                                            ; preds = %bb.cj
  %i.mp = load ptr, ptr %i.fg, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 48
  store ptr %i.mn, ptr %i.mq, align 8
  br label %.thread

bb.cm:                                            ; preds = %bb.ci
  %i.mr = icmp eq i32 %i.ml, 2
  br i1 %i.mr, label %xhci_ep_alloc_xfer.exit.thread, label %bb.cn

.thread:                                          ; preds = %bb.cl, %bb.ck
  %i.ms = load ptr, ptr %i.fm, align 8
  store ptr %i.ms, ptr %i.mn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  %i.mt = load ptr, ptr %i.fg, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8
  %i.mw = add i32 %i.mv, -1
  store i32 %i.mw, ptr %i.mu, align 8
  call void @usb_packet_cleanup(ptr noundef nonnull %i.fl) #17
  %i.mx = load ptr, ptr %i.fj, align 8
  call void @g_free(ptr noundef %i.mx) #17
  call void @g_free(ptr noundef nonnull %i.fg) #17
  %i.my = load i32, ptr %i.cs, align 4
  %i.mz = icmp eq i32 %i.my, 2
  br i1 %i.mz, label %xhci_ep_alloc_xfer.exit.thread, label %.thread157

bb.cn:                                            ; preds = %bb.cm
  %i.na = getelementptr inbounds nuw i8, ptr %i.fg, i64 185
  %i.nb = load i8, ptr %i.na, align 1, !range !8, !noundef !9
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.co, label %.thread157

bb.co:                                            ; preds = %bb.cn
  store ptr %i.fg, ptr %i.w, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.fg, i64 144 ; 2 uses
  call void @usb_packet_unmap(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.nd) #17
  call void @qemu_sglist_destroy(ptr noundef nonnull %i.nd) #17
  br label %xhci_ep_alloc_xfer.exit.thread

.thread157:                                       ; preds = %.thread, %bb.cn
  %i.ne = add nuw nsw i32 %.0112, 1               ; 2 uses
  %exitcond180 = icmp eq i32 %i.ne, 258
  br i1 %exitcond180, label %bb.cp, label %bb.al

bb.cp:                                            ; preds = %.thread157
  call fastcc void @trace_usb_xhci_enforced_limit(ptr noundef nonnull @.str.25)
  br label %xhci_ep_alloc_xfer.exit.thread

xhci_ep_alloc_xfer.exit.thread:                   ; preds = %xhci_fire_ctl_transfer.exit, %bb.ch, %bb.ay, %.thread, %bb.cm, %xhci_slot_ok.exit149, %.loopexit, %bb.ax, %bb.cp, %bb.co
  %i.nf = load i32, ptr %i.k, align 8
  %i.ng = add i32 %i.nf, -1
  store i32 %i.ng, ptr %i.k, align 8
  %i.nh = call fastcc ptr @xhci_epid_to_usbep(ptr noundef nonnull %0) ; 3 uses
  %.not130 = icmp eq ptr %i.nh, null
  br i1 %.not130, label %xhci_slot_ok.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %xhci_ep_alloc_xfer.exit.thread
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  call void @usb_device_flush_ep_queue(ptr noundef %i.nj, ptr noundef nonnull %i.nh) #17
  br label %xhci_slot_ok.exit.thread

.critedge:                                        ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %xhci_slot_ok.exit.thread

xhci_slot_ok.exit.thread:                         ; preds = %bb.f, %bb.g, %xhci_check_intr_iso_kick.exit.thread, %xhci_ep_free_xfer.exit140, %xhci_ep_alloc_xfer.exit.thread, %bb.cq, %bb.aj, %.critedge, %bb.ae, %bb.u, %bb.r, %xhci_slot_ok.exit, %bb.w
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @xhci_setup_packet(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !9 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, i32 105, i32 225
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %xhci_epid_to_usbep.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, -1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [272 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12512
  %i.p = load ptr, ptr %i.o, align 16             ; 2 uses
  %.not12.i = icmp eq ptr %i.p, null
  br i1 %.not12.i, label %xhci_epid_to_usbep.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.q, null
  br i1 %.not13.i, label %xhci_epid_to_usbep.exit.thread, label %xhci_epid_to_usbep.exit

xhci_epid_to_usbep.exit:                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not14.i = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not14.i, i32 225, i32 105
  %i.v = lshr i32 %i.s, 1
  %i.w = tail call ptr @usb_ep_get(ptr noundef nonnull %i.q, i32 noundef %i.u, i32 noundef %i.v) #17 ; 2 uses
  %.not19 = icmp eq ptr %i.w, null
  br i1 %.not19, label %xhci_epid_to_usbep.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %xhci_epid_to_usbep.exit
  %.0 = phi ptr [ %i.w, %xhci_epid_to_usbep.exit ], [ %i.g, %bb.a ]
  %i.x = load ptr, ptr %0, align 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 187 ; 4 uses
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.y, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 632
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @qemu_sglist_init(ptr noundef nonnull %i.aa, ptr noundef %i.ab, i32 noundef %i.ad, ptr noundef %i.af) #17
  %i.ag = load i32, ptr %i.ac, align 8            ; 3 uses
  %.not44.i = icmp eq i32 %i.ag, 0
  br i1 %.not44.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.not45.i = icmp eq i8 %i.b, 0
  br i1 %.not45.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.k
  %i.ai = phi i32 [ %i.az, %bb.k ], [ %i.ag, %.lr.ph.i ]
  %.03241.us.i = phi i32 [ %i.ba, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = sext i32 %.03241.us.i to i64
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
end_hunk_0
