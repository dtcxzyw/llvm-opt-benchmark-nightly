Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hcd-xhci?download=true
inline.NumInlined: 319
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@xhci_kick_epctx:bb.a
  br i1 %i.bz, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cb = load i32, ptr %i.ca, align 4
  tail call fastcc void @xhci_set_ep_state(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.cb)
  %i.cc = load ptr, ptr %i.w, align 8             ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i136 = icmp eq ptr %i.ce, null
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 248
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  br i1 %.not.i136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 248
  store ptr %i.cg, ptr %i.ch, align 8
  br label %xhci_ep_free_xfer.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %i.cg, ptr %i.cj, align 8
  br label %xhci_ep_free_xfer.exit

xhci_ep_free_xfer.exit:                           ; preds = %bb.ab, %bb.ac
  %i.ck = load ptr, ptr %i.cd, align 8
  store ptr %i.ck, ptr %i.cg, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  tail call void @usb_packet_cleanup(ptr noundef nonnull %i.cp) #17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @g_free(ptr noundef %i.cr) #17
  tail call void @g_free(ptr noundef nonnull %i.cc) #17
  br label %bb.ad

bb.ad:                                            ; preds = %xhci_ep_free_xfer.exit, %bb.z
  store ptr null, ptr %i.w, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4
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
  %.0116 = phi i32 [ %1, %bb.ah ], [ 0, %bb.ai ]  ; 3 uses
  %.0115 = phi ptr [ %i.cx, %bb.ah ], [ null, %bb.ai ]
  %.pn = phi ptr [ %i.cx, %bb.ah ], [ %0, %bb.ai ] ; 2 uses
  %.1113 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 3 uses
  %i.cy = load i64, ptr %.1113, align 8
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
  %.0111 = phi i32 [ 0, %bb.ak ], [ %i.nh, %.thread157 ]
  %.1113.val = load i64, ptr %.1113, align 8
  %.1113.val133 = load i8, ptr %i.db, align 8, !range !12, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !11
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %bb.al
  %.036.i = phi i1 [ false, %bb.al ], [ %.238.i, %.thread.i ] ; 2 uses
  %.034.i = phi i32 [ 0, %bb.al ], [ %.135.i, %.thread.i ] ; 4 uses
  %.031.i = phi i8 [ %.1113.val133, %bb.al ], [ %.233.i, %.thread.i ] ; 5 uses
  %.029.i = phi i64 [ %.1113.val, %bb.al ], [ %.130.i, %.thread.i ] ; 2 uses
  %.027.i = phi i32 [ 0, %bb.al ], [ %.128.i, %.thread.i ] ; 4 uses
  %i.dl = load ptr, ptr %i.dc, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  fence seq_cst
  %i.dm = call i32 @address_space_rw(ptr noundef %i.dl, i64 noundef %.029.i, i64 4294967296, ptr noundef nonnull %2, i64 noundef range(i64 1, 21) 16, i1 noundef zeroext false) #17
  %.not.i137 = icmp eq i32 %i.dm, 0
  br i1 %.not.i137, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = load i32, ptr @qemu_loglevel, align 4
  %i.do = and i32 %i.dn, 2048
  %.not14.i = icmp eq i32 %i.do, 0
  br i1 %.not14.i, label %xhci_ring_chain_length.exit.thread, label %xhci_ring_chain_length.exit.thread.sink.split, !prof !15

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
  br i1 %i.eg, label %bb.am, label %bb.aw, !llvm.loop !20

bb.aw:                                            ; preds = %.thread.i
  %i.eh = load i32, ptr @qemu_loglevel, align 4
  %i.ei = and i32 %i.eh, 2048
  %.not15.i = icmp eq i32 %i.ei, 0
  br i1 %.not15.i, label %xhci_ring_chain_length.exit.thread, label %xhci_ring_chain_length.exit.thread.sink.split, !prof !15

xhci_ring_chain_length.exit.thread.sink.split:    ; preds = %bb.aw, %bb.an
  %.str.46.sink = phi ptr [ @.str.18, %bb.an ], [ @.str.46, %bb.aw ]
  call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.46.sink, ptr noundef nonnull @__func__.xhci_ring_chain_length) #17
  br label %xhci_ring_chain_length.exit.thread

xhci_ring_chain_length.exit.thread:               ; preds = %xhci_ring_chain_length.exit.thread.sink.split, %bb.aw, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

xhci_ring_chain_length.exit:                      ; preds = %.thread3.i, %bb.ap, %bb.as
  %.2.i = phi i32 [ %i.ds, %bb.ap ], [ %i.dy, %bb.as ], [ %i.ed, %.thread3.i ] ; 3 uses
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
  %i.fh = zext nneg i32 %.2.i to i64              ; 2 uses
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
  br label %.critedge132

bb.az:                                            ; preds = %.critedge132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.fh
  br i1 %exitcond.not, label %._crit_edge, label %.critedge132, !llvm.loop !21

.critedge132:                                     ; preds = %.critedge132.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.critedge132.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 2 uses
  %i.fr = load ptr, ptr %i.fj, align 8
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %indvars.iv
  %i.ft = call fastcc i32 @xhci_ring_fetch(ptr noundef %i.b, ptr noundef nonnull %.1113, ptr noundef %i.fs, ptr noundef null)
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
  store i32 %.0116, ptr %i.gk, align 8
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
  br i1 %.not.i.i, label %trace_usb_xhci_xfer_start.exit.i, label %bb.be, !prof !15

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
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef nonnull %i.fg, i32 noundef %i.gu, i32 noundef %i.gw, i32 noundef %.0116) #17
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
  br i1 %.not.i.i143, label %trace_usb_xhci_xfer_start.exit.i146, label %bb.bo, !prof !15

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
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef nonnull %i.fg, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %.0116) #17
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
end_hunk_0
