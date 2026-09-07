Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/desc?download=true
inline.NumInlined: 66
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@usb_desc_get_descriptor:bb.a
  br label %usb_desc_device.exit

bb.d:                                             ; preds = %bb.b
  %i.t = trunc i16 %.pre.i to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.t, ptr %i.u, align 1
  %i.v = load i16, ptr %i.l, align 8
  %i.w = lshr i16 %i.v, 8
  %i.x = trunc nuw i16 %i.w to i8
  br label %usb_desc_device.exit

usb_desc_device.exit:                             ; preds = %bb.c, %bb.d
  %.sink.i = phi i8 [ %i.x, %bb.d ], [ 2, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %.sink.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = load i16, ptr %i.c, align 2
  %i.am = trunc i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = load i16, ptr %i.c, align 2
  %i.ap = lshr i16 %i.ao, 8
  %i.aq = trunc nuw i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2
  %i.au = trunc i16 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = load i16, ptr %i.as, align 2
  %i.ax = lshr i16 %i.aw, 8
  %i.ay = trunc nuw i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = trunc i16 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = load i16, ptr %i.ba, align 2
  %i.bf = lshr i16 %i.be, 8
  %i.bg = trunc nuw i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bj = load i8, ptr %i.bi, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bv = load i8, ptr %i.bu, align 8
  %i.bw = zext i8 %i.bv to i32
  %i.bx = trunc i64 %4 to i32
  %i.by = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %trace_usb_desc_device.exit.thread, label %bb.e, !prof !11

bb.e:                                             ; preds = %usb_desc_device.exit
  %i.bz = load i16, ptr @_TRACE_USB_DESC_DEVICE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.bz, 0
  br i1 %.not3.i, label %trace_usb_desc_device.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = load i32, ptr @qemu_loglevel, align 4
  %i.cb = and i32 %i.ca, 32768
  %.not4.i = icmp eq i32 %i.cb, 0
  br i1 %.not4.i, label %trace_usb_desc_device.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i32 noundef range(i32 0, 256) %i.bw, i32 noundef %i.bx, i32 noundef 18) #11
  br label %trace_usb_desc_device.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.cc = and i32 %2, 255                         ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = zext i8 %i.ce to i32
  %i.cg = icmp samesign ult i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = zext nneg i32 %i.cc to i64
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = tail call i32 @usb_desc_config(ptr noundef %i.ck, i32 noundef %spec.select, ptr noundef %i.d, i64 noundef 8192)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.cl, %bb.i ], [ -1, %bb.h ]   ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cn = load i8, ptr %i.cm, align 8
  %i.co = zext i8 %i.cn to i32
  %i.cp = trunc i64 %4 to i32
  %i.cq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i75 = icmp eq i32 %i.cq, 0
  br i1 %.not.i75, label %trace_usb_desc_device.exit, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.cr = load i16, ptr @_TRACE_USB_DESC_CONFIG_DSTATE, align 2
  %.not4.i76 = icmp eq i16 %i.cr, 0
  br i1 %.not4.i76, label %trace_usb_desc_device.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not5.i = icmp eq i32 %i.ct, 0
  br i1 %.not5.i, label %trace_usb_desc_device.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef range(i32 0, 256) %i.co, i32 noundef range(i32 0, 256) %i.cc, i32 noundef %i.cp, i32 noundef range(i32 -2147483648, 65536) %.0) #11
  br label %trace_usb_desc_device.exit

bb.n:                                             ; preds = %bb.a
  %i.cu = and i32 %2, 255                         ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <4 x i8> <i8 4, i8 3, i8 9, i8 4>, ptr %i.d, align 1
  br label %usb_desc_string.exit

bb.p:                                             ; preds = %bb.n
  %i.cw = trunc i32 %2 to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5624
  %.08.i.i = load ptr, ptr %i.cx, align 8         ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %usb_desc_get_string.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.010.i.i = phi ptr [ %.0.i.i, %bb.q ], [ %.08.i.i, %bb.p ] ; 3 uses
  %i.cy = load i8, ptr %.010.i.i, align 8
  %i.cz = icmp eq i8 %i.cy, %i.cw
  br i1 %i.cz, label %usb_desc_get_string.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.da, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %usb_desc_get_string.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !2

usb_desc_get_string.exit.i:                       ; preds = %.lr.ph.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %usb_desc_get_string.exit.thread.i, label %bb.r

usb_desc_get_string.exit.thread.i:                ; preds = %bb.q, %usb_desc_get_string.exit.i, %bb.p
  %i.de = tail call ptr @usb_device_get_usb_desc(ptr noundef nonnull %0) #11
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = zext nneg i32 %i.cu to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %usb_desc_string.exit, label %bb.r

bb.r:                                             ; preds = %usb_desc_get_string.exit.thread.i, %usb_desc_get_string.exit.i
  %.0.i = phi ptr [ %i.dj, %usb_desc_get_string.exit.thread.i ], [ %i.dc, %usb_desc_get_string.exit.i ] ; 23 uses
  %i.dl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #14
  %.tr.i = trunc i64 %i.dl to i8
  %i.dm = shl i8 %.tr.i, 1
  %i.dn = add i8 %i.dm, 2                         ; 3 uses
  store i8 %i.dn, ptr %i.d, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 3, ptr %i.do, align 1
  %i.dp = zext i8 %i.dn to i32                    ; 5 uses
  %i.dq = icmp ugt i8 %i.dn, 3
  br i1 %i.dq, label %iter.check, label %usb_desc_string.exit

iter.check:                                       ; preds = %bb.r
  %i.dr = add nsw i32 %i.dp, -4                   ; 5 uses
  %i.ds = lshr exact i32 %i.dr, 1
  %i.dt = add nuw i32 %i.ds, 1
  %wide.trip.count = zext i32 %i.dt to i64        ; 8 uses
  %min.iters.check = icmp ult i32 %i.dr, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %i.d, i64 2
  %i.du = zext i32 %i.dr to i64
  %i.dv = getelementptr i8, ptr %i.d, i64 %i.du
  %scevgep122 = getelementptr i8, ptr %i.dv, i64 4
  %scevgep123 = getelementptr i8, ptr %.0.i, i64 %wide.trip.count
  %bound0 = icmp ult ptr %scevgep, %scevgep123
  %bound1 = icmp ult ptr %.0.i, %scevgep122
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check124 = icmp ult i32 %i.dr, 30
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 10 uses
  %i.dx = shl nuw nsw i64 %n.vec, 1
  %i.dy = or disjoint i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %wide.load = load <8 x i8>, ptr %.0.i, align 1, !alias.scope !23
  %wide.load125 = load <8 x i8>, ptr %i.dz, align 1, !alias.scope !23
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ea, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126 = shufflevector <8 x i8> %wide.load125, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126, ptr %i.eb, align 1, !alias.scope !24, !noalias !23
  %i.ec = icmp eq i64 %n.vec, 16
  br i1 %i.ec, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.ed, align 1, !alias.scope !23
  %wide.load125.1 = load <8 x i8>, ptr %i.ee, align 1, !alias.scope !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  %interleaved.vec.1 = shufflevector <8 x i8> %wide.load.1, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ef, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.1 = shufflevector <8 x i8> %wide.load125.1, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.1, ptr %i.eg, align 1, !alias.scope !24, !noalias !23
  %i.eh = icmp eq i64 %n.vec, 32
  br i1 %i.eh, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.ei, align 1, !alias.scope !23
  %wide.load125.2 = load <8 x i8>, ptr %i.ej, align 1, !alias.scope !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  %interleaved.vec.2 = shufflevector <8 x i8> %wide.load.2, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.ek, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.2 = shufflevector <8 x i8> %wide.load125.2, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.2, ptr %i.el, align 1, !alias.scope !24, !noalias !23
  %i.em = icmp eq i64 %n.vec, 48
  br i1 %i.em, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.en, align 1, !alias.scope !23
  %wide.load125.3 = load <8 x i8>, ptr %i.eo, align 1, !alias.scope !23
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 114
  %interleaved.vec.3 = shufflevector <8 x i8> %wide.load.3, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.ep, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.3 = shufflevector <8 x i8> %wide.load125.3, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.3, ptr %i.eq, align 1, !alias.scope !24, !noalias !23
  %i.er = icmp eq i64 %n.vec, 64
  br i1 %i.er, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.es, align 1, !alias.scope !23
  %wide.load125.4 = load <8 x i8>, ptr %i.et, align 1, !alias.scope !23
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 130
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 146
  %interleaved.vec.4 = shufflevector <8 x i8> %wide.load.4, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.4, ptr %i.eu, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.4 = shufflevector <8 x i8> %wide.load125.4, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.4, ptr %i.ev, align 1, !alias.scope !24, !noalias !23
  %i.ew = icmp eq i64 %n.vec, 80
  br i1 %i.ew, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %wide.load.5 = load <8 x i8>, ptr %i.ex, align 1, !alias.scope !23
  %wide.load125.5 = load <8 x i8>, ptr %i.ey, align 1, !alias.scope !23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 162
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 178
  %interleaved.vec.5 = shufflevector <8 x i8> %wide.load.5, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.5, ptr %i.ez, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.5 = shufflevector <8 x i8> %wide.load125.5, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.5, ptr %i.fa, align 1, !alias.scope !24, !noalias !23
  %i.fb = icmp eq i64 %n.vec, 96
  br i1 %i.fb, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  %wide.load.6 = load <8 x i8>, ptr %i.fc, align 1, !alias.scope !23
  %wide.load125.6 = load <8 x i8>, ptr %i.fd, align 1, !alias.scope !23
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 194
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 210
  %interleaved.vec.6 = shufflevector <8 x i8> %wide.load.6, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.6, ptr %i.fe, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec126.6 = shufflevector <8 x i8> %wide.load125.6, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec126.6, ptr %i.ff, align 1, !alias.scope !24, !noalias !23
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %usb_desc_string.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.fg = shl nuw nsw i64 %n.vec127, 1
  %i.fh = or disjoint i64 %i.fg, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = shl nuw i64 %index128, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i, i64 %index128
  %wide.load129 = load <4 x i8>, ptr %i.fj, align 1, !alias.scope !23
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %interleaved.vec130 = shufflevector <4 x i8> %wide.load129, <4 x i8> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec130, ptr %i.fl, align 1, !alias.scope !24, !noalias !23
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.fm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %n.vec127, %wide.trip.count
  br i1 %cmp.n132, label %usb_desc_string.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ] ; 3 uses
  %i.fn = lshr exact i32 %i.dr, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = sub nsw i64 %i.fo, %indvars.iv.ph
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %.lr.ph.i.prol ], [ %indvars.iv109.ph, %.lr.ph.i.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.prol
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv109.prol
  store i8 %i.fr, ptr %i.fs, align 1
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv109.prol
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 0, ptr %i.fu, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !21

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next110.prol, %.lr.ph.i.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.fv = icmp ult i64 %i.fp, 3
  br i1 %i.fv, label %usb_desc_string.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %.lr.ph.i ], [ %indvars.iv109.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv109
  store i8 %i.fx, ptr %i.fy, align 1
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv109
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store i8 0, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110
  store i8 %i.gd, ptr %i.ge, align 1
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store i8 0, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110.1
  store i8 %i.gj, ptr %i.gk, align 1
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 6 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110.1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store i8 0, ptr %i.gm, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 3
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110.2
  store i8 %i.gp, ptr %i.gq, align 1
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next110.2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store i8 0, ptr %i.gs, align 1
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %usb_desc_string.exit, label %.lr.ph.i, !llvm.loop !22

usb_desc_string.exit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o, %usb_desc_get_string.exit.thread.i, %bb.r
  %.029.i = phi i32 [ 0, %usb_desc_get_string.exit.thread.i ], [ 4, %bb.o ], [ 2, %bb.r ], [ %i.dp, %middle.block ], [ %i.dp, %vec.epilog.middle.block ], [ %i.dp, %.lr.ph.i ], [ %i.dp, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gu = load i8, ptr %i.gt, align 8
  %i.gv = zext i8 %i.gu to i32
  %i.gw = trunc i64 %4 to i32
  %i.gx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i78 = icmp eq i32 %i.gx, 0
  br i1 %.not.i78, label %trace_usb_desc_device.exit, label %bb.s, !prof !11

bb.s:                                             ; preds = %usb_desc_string.exit
  %i.gy = load i16, ptr @_TRACE_USB_DESC_STRING_DSTATE, align 2
  %.not4.i79 = icmp eq i16 %i.gy, 0
  br i1 %.not4.i79, label %trace_usb_desc_device.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gz = load i32, ptr @qemu_loglevel, align 4
  %i.ha = and i32 %i.gz, 32768
  %.not5.i80 = icmp eq i32 %i.ha, 0
  br i1 %.not5.i80, label %trace_usb_desc_device.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef range(i32 0, 256) %i.gv, i32 noundef range(i32 0, 256) %i.cu, i32 noundef %i.gw, i32 noundef range(i32 -1, 256) %.029.i) #11
  br label %trace_usb_desc_device.exit

bb.v:                                             ; preds = %bb.a
  %.not73 = icmp eq ptr %.069, null
  br i1 %.not73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 10, ptr %i.d, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 6, ptr %i.hb, align 1
  %i.hc = load i16, ptr %.069, align 8
  %i.hd = trunc i16 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.hd, ptr %i.he, align 1
  %i.hf = load i16, ptr %.069, align 8
  %i.hg = lshr i16 %i.hf, 8
  %i.hh = trunc nuw i16 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.hh, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.069, i64 2
  %i.hk = load i8, ptr %i.hj, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.069, i64 3
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.hn, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.069, i64 4
  %i.hq = load i8, ptr %i.hp, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.hq, ptr %i.hr, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.069, i64 5
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 %i.ht, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.069, i64 6
  %i.hw = load i8, ptr %i.hv, align 2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.hw, ptr %i.hx, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.hy, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1 = phi i32 [ 10, %bb.w ], [ -1, %bb.v ]      ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ia = load i8, ptr %i.hz, align 8
  %i.ib = zext i8 %i.ia to i32
  %i.ic = trunc i64 %4 to i32
  %i.id = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i82 = icmp eq i32 %i.id, 0
  br i1 %.not.i82, label %trace_usb_desc_device.exit, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.ie = load i16, ptr @_TRACE_USB_DESC_DEVICE_QUALIFIER_DSTATE, align 2
  %.not3.i83 = icmp eq i16 %i.ie, 0
  br i1 %.not3.i83, label %trace_usb_desc_device.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.if = load i32, ptr @qemu_loglevel, align 4
  %i.ig = and i32 %i.if, 32768
  %.not4.i84 = icmp eq i32 %i.ig, 0
  br i1 %.not4.i84, label %trace_usb_desc_device.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef range(i32 0, 256) %i.ib, i32 noundef %i.ic, i32 noundef range(i32 -1, 11) %.1) #11
  br label %trace_usb_desc_device.exit

bb.ab:                                            ; preds = %bb.a
  %.not = icmp eq ptr %.069, null
  %.pre = and i32 %2, 255                         ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ih = getelementptr inbounds nuw i8, ptr %.069, i64 6
  %i.ii = load i8, ptr %i.ih, align 2
  %i.ij = zext i8 %i.ii to i32
  %i.ik = icmp samesign ult i32 %.pre, %i.ij
  br i1 %i.ik, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %i.il = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = zext nneg i32 %.pre to i64
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.in
  %i.ip = tail call i32 @usb_desc_config(ptr noundef %i.io, i32 noundef %spec.select, ptr noundef %i.d, i64 noundef 8192)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 7, ptr %i.iq, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab, %bb.ad, %bb.ac
  %.2 = phi i32 [ -1, %bb.ac ], [ %i.ip, %bb.ad ], [ -1, %bb.ab ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.is = load i8, ptr %i.ir, align 8
  %i.it = zext i8 %i.is to i32
  %i.iu = trunc i64 %4 to i32
  %i.iv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i85 = icmp eq i32 %i.iv, 0
  br i1 %.not.i85, label %trace_usb_desc_device.exit, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %._crit_edge
  %i.iw = load i16, ptr @_TRACE_USB_DESC_OTHER_SPEED_CONFIG_DSTATE, align 2
  %.not4.i86 = icmp eq i16 %i.iw, 0
  br i1 %.not4.i86, label %trace_usb_desc_device.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ix = load i32, ptr @qemu_loglevel, align 4
  %i.iy = and i32 %i.ix, 32768
  %.not5.i87 = icmp eq i32 %i.iy, 0
end_hunk_0
